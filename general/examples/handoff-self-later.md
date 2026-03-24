# Handoff: Full-Text Search with Meilisearch

**Created:** 2026-02-10
**Status:** Paused — pick up from here

---

## Where I Left Off

I was in the middle of writing the search indexing worker. The Meilisearch instance is running, the schema is configured, and the API endpoint returns results. But the background indexing job that keeps the search index in sync with Postgres isn't done — it indexes on create but not on update/delete. I stopped because it was late and the sync logic needs careful thought about ordering guarantees.

## The Plan

Replace the existing Postgres `ILIKE` search with Meilisearch for the `posts` and `comments` tables. Three parts:

1. **Meilisearch setup** — Docker container, index configuration, field weights
2. **Search API** — New endpoint `GET /api/search` that queries Meilisearch and returns formatted results with highlights
3. **Index sync** — Background worker that keeps Meilisearch in sync with Postgres via a job queue (using the existing BullMQ setup)

## What's Working

- Meilisearch running in Docker (`docker-compose.yml` updated, port 7700)
- `posts` index configured with searchable fields: `title` (weight 3), `body` (weight 1), `author_name` (weight 2)
- `comments` index configured with searchable fields: `body` (weight 1), `author_name` (weight 2)
- `GET /api/search?q=term` endpoint works — queries both indices, merges results, returns highlights
- Initial bulk indexing script (`scripts/reindex-search.js`) works — tested with 10K posts, takes ~8 seconds
- Tests pass for the search endpoint and bulk indexing

## What's Not Working Yet

- **Index sync on update/delete** — The `SearchIndexWorker` only handles `post.created` and `comment.created` events. Update and delete events aren't wired up yet. This means edits and deletions don't reflect in search results until a full reindex.
- **Stale result links** — When a post is deleted but still in the search index, clicking the result 404s. Need to either sync deletes or handle gracefully in the frontend.
- **Search pagination** — The endpoint returns all results. Meilisearch supports `offset`/`limit` but I haven't wired the query params through yet. Low priority but needs doing before launch.

## My Current Thinking

For index sync, I'm leaning toward **event-driven via the existing model hooks** rather than polling or CDC. The `Post` and `Comment` models already have `afterUpdate` and `afterDestroy` hooks for the activity feed. I can add search index events in the same hooks. The BullMQ job queue handles ordering within a single queue, so events for the same document will process in order.

The alternative was Postgres logical replication (CDC), but that's way more infrastructure for this use case. We only have two searchable models.

For stale results, I think the simplest fix is a frontend guard — if the API returns 404 for a search result click, show "this content is no longer available" and remove it from the displayed results. Belt and suspenders with the sync.

## Decisions I've Made

- **Meilisearch over Elasticsearch** — Way simpler to operate, built-in typo tolerance, good enough for our scale (< 100K documents). ES is overkill.
- **Separate indices per model (not unified)** — Keeps the schema clean. The API merges results at query time. Tried a unified index first but the field mapping got messy.
- **BullMQ for index sync (not synchronous)** — Search indexing shouldn't block the HTTP response. Async via the job queue we already use. Acceptable latency is ~2 seconds.
- **Highlight format: surrounding text with `<mark>` tags** — Meilisearch returns these natively. Frontend renders them. No custom highlighting logic needed.

## Things I Tried That Didn't Work

- **Unified search index** — Tried putting posts and comments in the same Meilisearch index with a `type` field. Sorting and relevance got weird because posts have titles (high weight) and comments don't. Split into two indices and the relevance improved immediately.
- **Synchronous indexing in the request lifecycle** — First implementation indexed inline during `POST /api/posts`. Added 200-400ms to every create. Moved to async via BullMQ and response times went back to normal.
- **`pg_trgm` extension** — Tried improving the existing Postgres search with trigram indexes before committing to Meilisearch. Performance was better but typo tolerance was poor and the query syntax was ugly. Decided the operational cost of Meilisearch was worth the UX improvement.

## Next Time I Pick This Up

1. Add `afterUpdate` and `afterDestroy` hooks to `Post` and `Comment` models that dispatch `post.updated`, `post.deleted`, `comment.updated`, `comment.deleted` events to BullMQ
2. Handle those events in `SearchIndexWorker` — update reindexes the document, delete removes it from the index
3. Write tests for the sync: create a post, update it, verify search returns new content; delete it, verify search no longer returns it
4. Add `offset` and `limit` query params to the search endpoint
5. Add the frontend 404 guard for stale search results
6. Run a full manual test: create, edit, delete content and verify search stays in sync
7. Update the Docker setup docs to mention the Meilisearch container

## Open Questions

- Should search results include draft posts? Currently they do because the bulk indexer indexes everything. Probably should filter to `status = 'published'` only — but need to check if there's a use case for authors searching their own drafts.
- Rate limiting on the search endpoint — Meilisearch can handle the load but should we rate limit anyway to prevent abuse? The other API endpoints use `express-rate-limit` at 100 req/min.
- Do we need to index any other models? `users` (for people search) and `tags` have come up in feature requests but aren't in scope for this round.
