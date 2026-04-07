#!/usr/bin/env bash
set -euo pipefail

# afk-ralph.sh -- Run RALPH in autonomous loop until all sub-issues are closed or max iterations.
# Usage: ./ralph/afk-ralph.sh <prd-issue-number> [max-iterations]
#
# Runs inside a Docker sandbox for isolation.

PRD_ISSUE="${1:?Usage: afk-ralph.sh <prd-issue-number> [max-iterations]}"
MAX_ITERATIONS="${2:-20}"
REPO="$(gh repo view --json nameWithOwner --jq '.nameWithOwner')"
REPO_ROOT="$(git rev-parse --show-toplevel)"
PRD_TITLE="$(gh issue view "$PRD_ISSUE" --repo "$REPO" --json title --jq '.title')"

cd "$REPO_ROOT"

# Inject credentials into the Docker sandbox.
# - Claude OAuth: macOS Keychain -> .credentials.json (docker/for-mac#7842)
# - GitHub CLI: gh auth token -> GH_TOKEN env var
inject_sandbox_credentials() {
  local creds gh_token

  # Claude OAuth
  creds=$(security find-generic-password -s "Claude Code-credentials" -w 2>/dev/null) || true
  if [[ -n "$creds" ]]; then
    docker sandbox exec "$SANDBOX_NAME" bash -c "cat > /home/agent/.claude/.credentials.json << 'ENDCREDS'
${creds}
ENDCREDS" 2>/dev/null
    echo "Injected Claude OAuth credentials into sandbox"
  fi

  # GitHub CLI
  gh_token=$(gh auth token 2>/dev/null) || true
  if [[ -n "$gh_token" ]]; then
    docker sandbox exec "$SANDBOX_NAME" bash -c \
      "grep -q GH_TOKEN /etc/sandbox-persistent.sh 2>/dev/null || echo 'export GH_TOKEN=${gh_token}' >> /etc/sandbox-persistent.sh" 2>/dev/null
    echo "Injected GitHub token into sandbox"
  fi
}

SANDBOX_NAME="claude-$(basename "$REPO_ROOT")"

echo "Starting AFK RALPH: PRD #${PRD_ISSUE}, $MAX_ITERATIONS max iterations"
echo ""

# Ensure sandbox exists and has OAuth credentials before the loop
if ! docker sandbox ls 2>/dev/null | awk 'NR>1 {print $1}' | grep -q "^${SANDBOX_NAME}$"; then
  echo "Creating sandbox '${SANDBOX_NAME}'..."
  docker sandbox create --name "$SANDBOX_NAME" claude "$REPO_ROOT"
fi
inject_sandbox_credentials

# Create feature branch for this PRD
BRANCH="ralph/prd-${PRD_ISSUE}"
if git show-ref --verify --quiet "refs/heads/${BRANCH}"; then
  git branch -D "$BRANCH"
fi
git checkout -b "$BRANCH"
echo "Created branch: ${BRANCH}"
echo ""

# On exit: push branch and create PR (or draft PR on failure)
cleanup() {
  local exit_code=$?
  local current_branch
  current_branch=$(git branch --show-current)

  if [[ "$current_branch" != "$BRANCH" ]]; then
    exit "$exit_code"
  fi

  local commits_ahead
  commits_ahead=$(git rev-list --count main.."$BRANCH" 2>/dev/null || echo "0")

  if [[ "$commits_ahead" -gt 0 ]]; then
    echo ""
    echo "Pushing branch ${BRANCH} (${commits_ahead} commit(s))..."
    git push --force-with-lease --set-upstream origin "$BRANCH"

    # Check if a PR already exists for this branch
    existing_pr=$(gh pr view "$BRANCH" --repo "$REPO" --json number --jq '.number' 2>/dev/null || echo "")

    if [[ -n "$existing_pr" ]]; then
      echo "PR #${existing_pr} already exists for branch ${BRANCH}."
    elif [[ "$exit_code" -eq 0 ]]; then
      echo "Creating pull request..."
      gh pr create \
        --repo "$REPO" \
        --base main \
        --head "$BRANCH" \
        --title "$PRD_TITLE" \
        --body "$(cat <<EOF
Implements PRD #${PRD_ISSUE}.

## PRD
Closes #${PRD_ISSUE}
EOF
)"
    else
      echo "Creating draft pull request (incomplete — max iterations reached)..."
      gh pr create \
        --repo "$REPO" \
        --base main \
        --head "$BRANCH" \
        --title "[WIP] $PRD_TITLE" \
        --draft \
        --body "$(cat <<EOF
Partial implementation of PRD #${PRD_ISSUE} (max iterations reached).

## PRD
References #${PRD_ISSUE}
EOF
)"
    fi
  else
    echo "No new commits on ${BRANCH}. Skipping push and PR."
  fi

  echo "Switching back to main..."
  git checkout main
  exit "$exit_code"
}
trap cleanup EXIT

for ((i=1; i<=MAX_ITERATIONS; i++)); do
  echo "=== RALPH iteration $i / $MAX_ITERATIONS ==="

  # Re-fetch issue state each iteration to get current open/closed status
  echo "Fetching PRD issue #${PRD_ISSUE}..."
  prd_body=$(gh issue view "$PRD_ISSUE" --repo "$REPO" --json number,title,state,body \
    --jq '"# PRD: \(.title) (#\(.number))\nState: \(.state)\n\n\(.body)"')

  echo "Finding sub-issues..."
  sub_issue_numbers=$(gh search issues --repo "$REPO" "Parent PRD #${PRD_ISSUE}" \
    --json number --jq '.[].number' | grep -v "^${PRD_ISSUE}$" | sort -n)

  if [[ -z "$sub_issue_numbers" ]]; then
    echo "No sub-issues found. Nothing to do."
    exit 1
  fi

  # Check if all sub-issues are closed before fetching details
  open_count=0
  for num in $sub_issue_numbers; do
    state=$(gh issue view "$num" --repo "$REPO" --json state --jq '.state')
    if [[ "$state" == "OPEN" ]]; then
      open_count=$((open_count + 1))
    fi
  done

  if [[ "$open_count" -eq 0 ]]; then
    echo "=== RALPH: All sub-issues closed after $((i - 1)) iterations ==="
    exit 0
  fi

  echo "$open_count open sub-issue(s) remaining."

  # Ensure OAuth credentials are available in the sandbox
  inject_sandbox_credentials

  # Fetch each sub-issue's full details
  sub_issues=""
  for num in $sub_issue_numbers; do
    detail=$(gh issue view "$num" --repo "$REPO" --json number,title,state,body \
      --jq '"---\n## Sub-issue #\(.number): \(.title)\nState: \(.state)\n\n\(.body)"')
    sub_issues="${sub_issues}\n${detail}"
  done

  result=$(docker sandbox run "$SANDBOX_NAME" -- \
    -p \
    --permission-mode bypassPermissions \
    "@ralph/prompt.md

${prd_body}

# Sub-issues
${sub_issues}

---

Read the PRD and sub-issues above. Then:
1. Identify which sub-issues are OPEN and not blocked by other OPEN issues.
2. Pick ONE open, unblocked sub-issue to work on (prioritize: architecture > integration > spikes > features > polish).
3. Implement that sub-issue. Keep the change small and focused.
4. Detect and run the project's test suite (check package.json, pyproject.toml, Makefile, Cargo.toml, CLAUDE.md, etc.). Fix any failures.
5. Make a git commit with a descriptive message.
6. Close the sub-issue: gh issue close <number> --repo ${REPO} --comment \"Completed in \$(git rev-parse --short HEAD). <brief summary of what was done>\"
7. If ALL sub-issues are now closed, output <promise>COMPLETE</promise>.
ONLY WORK ON A SINGLE SUB-ISSUE PER ITERATION.")

  echo "$result"
  echo ""

  if [[ "$result" == *"<promise>COMPLETE</promise>"* ]]; then
    echo "=== RALPH: All work complete after $i iterations ==="
    exit 0
  fi

  # --- Code review gate ---
  echo "--- Code review for iteration $i ---"

  review_result=$(docker sandbox run "$SANDBOX_NAME" -- \
    -p \
    --permission-mode bypassPermissions \
    "@ralph/review-prompt.md

Review the changes from the most recent commit. Follow the review procedure exactly.")

  echo "$review_result"
  echo ""

  if [[ "$review_result" == *"<review>FIXES_APPLIED</review>"* ]]; then
    echo "--- Review: fixes applied, continuing ---"
  else
    echo "--- Review: clean, continuing ---"
  fi
done

echo "=== RALPH: Reached max iterations ($MAX_ITERATIONS) without completion ==="
exit 1
