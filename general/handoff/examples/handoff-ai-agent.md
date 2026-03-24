# Handoff: Payment System Migration to Stripe

**Created:** 2026-02-10
**Author:** Claude Code session
**For:** AI Agent
**Status:** Ready to execute

---

## Summary

Migrating the billing system from Braintree to Stripe. The plan is fully shaped — database schema changes are designed, the API wrapper is specced, and the migration strategy (dual-write with cutover) is decided. Implementation hasn't started. The receiving agent should execute the plan top-to-bottom.

## Project Context

SaaS application (Node.js/Express backend, PostgreSQL, React frontend). Monorepo structure. Currently using Braintree for subscriptions and one-time payments. ~2,400 active subscribers across 3 plan tiers. The app uses a `BillingService` abstraction layer, which makes the swap cleaner than it could be.

Key directories:
- `src/services/billing/` — current Braintree integration
- `src/models/` — Sequelize models including `Subscription`, `Payment`, `Invoice`
- `src/api/routes/billing.js` — billing API endpoints
- `migrations/` — database migrations

## The Plan

### Phase 1: Stripe Foundation (Days 1-2)

1. Install `stripe` package, add API keys to environment config
2. Create `src/services/billing/stripe.js` implementing the `BillingProvider` interface
3. Write unit tests for the Stripe provider against the same test suite as Braintree
4. Create Stripe webhook handler at `src/api/routes/stripe-webhooks.js`

### Phase 2: Database Schema (Day 3)

1. Add `stripe_customer_id` column to `users` table
2. Add `stripe_subscription_id` column to `subscriptions` table
3. Add `payment_provider` enum column to `payments` table (values: `braintree`, `stripe`)
4. Create migration for all schema changes

### Phase 3: Dual-Write Period (Days 4-6)

1. Implement dual-write in `BillingService` — new subscriptions go to Stripe, existing stay on Braintree
2. Build customer migration script (`scripts/migrate-customers-to-stripe.js`) that:
   - Creates Stripe customers for all existing users
   - Maps Braintree subscription IDs to Stripe equivalents
   - Runs in batches of 50 with retry logic
3. Run migration script in staging, verify data integrity

### Phase 4: Cutover (Days 7-8)

1. Switch `BillingService` to Stripe-only for all operations
2. Run final migration batch for any stragglers
3. Verify webhook processing for subscription renewals
4. Remove Braintree provider code and dependencies

## Key Files

| File | Why It Matters |
|------|---------------|
| `src/services/billing/index.js` | BillingService abstraction — the main integration point |
| `src/services/billing/braintree.js` | Current provider — reference for interface contract |
| `src/models/Subscription.js` | Subscription model — needs new columns |
| `src/models/User.js` | User model — needs `stripe_customer_id` |
| `src/api/routes/billing.js` | Billing endpoints — should NOT change (abstraction handles it) |
| `tests/services/billing.test.js` | Provider test suite — new provider must pass these |

## Current State

**Done:**
- Plan fully shaped and approved
- `BillingProvider` interface documented
- Stripe account created and API keys generated (in 1Password, not committed)
- Test Stripe webhook endpoint configured for staging

**In Progress:**
- Nothing — implementation hasn't started

**Not Started:**
- All four phases above

## Decisions Made

- **Dual-write over big-bang migration** — Reduces risk. New customers go to Stripe immediately, existing customers migrate in batches. Rejected big-bang because 2,400 subscribers is too many to migrate in a maintenance window without risk.
- **Keep the BillingProvider interface unchanged** — The existing abstraction is solid. Adding Stripe as a new provider behind the same interface means billing endpoints don't change at all.
- **Batch migration in groups of 50** — Stripe's API rate limit is 100/sec, but 50 gives comfortable headroom for retries. Each batch sleeps 2 seconds.
- **No Braintree data deletion for 90 days** — Keep Braintree data as fallback. The `payment_provider` column on payments lets us query both during the transition period.

## Important Context

- Braintree webhook handler (`src/api/routes/braintree-webhooks.js`) must stay active during dual-write period. Both webhook handlers run simultaneously.
- The `BillingProvider` interface has a quirk: `cancelSubscription()` returns different shapes for immediate vs. end-of-period cancellation. The Stripe provider must match this exactly. See the test file for expected return values.
- Staging environment uses Stripe test mode keys. They're in the staging `.env` on the deployment server — not in the repo.
- Three customers have custom pricing (set via Braintree overrides). Their user IDs are in `scripts/custom-pricing-users.json`. These need manual Stripe price creation.

## Next Steps

1. **Install Stripe and create the provider** — `npm install stripe`, create `src/services/billing/stripe.js` implementing `BillingProvider`. Done when all existing billing tests pass with the Stripe provider.
2. **Create webhook handler** — `src/api/routes/stripe-webhooks.js` handling `invoice.payment_succeeded`, `customer.subscription.updated`, `customer.subscription.deleted`. Done when webhook signature verification is in place and events are logged.
3. **Run database migration** — Create and run the migration adding Stripe columns. Done when migration runs cleanly in staging and rollback works.
4. **Implement dual-write** — Update `BillingService.createSubscription()` to route to Stripe for new customers. Done when new staging signups create Stripe subscriptions.
5. **Build and test migration script** — `scripts/migrate-customers-to-stripe.js`. Done when all staging customers have Stripe customer IDs and subscription mappings.
6. **Execute cutover** — Switch to Stripe-only, verify renewals process correctly. Done when a full billing cycle completes in staging without errors.

## Constraints

- Do NOT modify `src/api/routes/billing.js` — the abstraction layer handles the provider swap. If you find yourself changing billing endpoints, something is wrong.
- Do NOT commit API keys or secrets. Use environment variables only.
- Do NOT delete Braintree code until Phase 4. Both providers must coexist during dual-write.
- All database migrations must include a rollback (`down` method).
- The migration script must be idempotent — safe to run multiple times without duplicating data.
- Maintain the existing test suite. Add new tests for Stripe-specific behavior, but existing tests must continue passing.
