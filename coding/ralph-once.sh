#!/usr/bin/env bash
set -euo pipefail

# ralph-once.sh -- Run one RALPH iteration against a GitHub PRD issue, then stop for human review.
# Usage: ./ralph/ralph-once.sh <prd-issue-number>

PRD_ISSUE="${1:?Usage: ralph-once.sh <prd-issue-number>}"
REPO="$(gh repo view --json nameWithOwner --jq '.nameWithOwner')"

cd "$(git rev-parse --show-toplevel)"

echo "Fetching PRD issue #${PRD_ISSUE}..."

# Fetch the PRD issue body
prd_body=$(gh issue view "$PRD_ISSUE" --repo "$REPO" --json number,title,state,body \
  --jq '"# PRD: \(.title) (#\(.number))\nState: \(.state)\n\n\(.body)"')

# Find sub-issues that reference this PRD
echo "Finding sub-issues..."
sub_issue_numbers=$(gh search issues --repo "$REPO" "Parent PRD #${PRD_ISSUE}" \
  --json number --jq '.[].number' | grep -v "^${PRD_ISSUE}$" | sort -n)

if [[ -z "$sub_issue_numbers" ]]; then
  echo "No sub-issues found referencing PRD #${PRD_ISSUE}."
  echo "Create sub-issues with '## Parent PRD' followed by '#${PRD_ISSUE}' in the body."
  exit 1
fi

# Fetch each sub-issue's full details
sub_issues=""
for num in $sub_issue_numbers; do
  detail=$(gh issue view "$num" --repo "$REPO" --json number,title,state,body \
    --jq '"---\n## Sub-issue #\(.number): \(.title)\nState: \(.state)\n\n\(.body)"')
  sub_issues="${sub_issues}\n${detail}"
done

echo "Found $(echo "$sub_issue_numbers" | wc -l | tr -d ' ') sub-issues. Starting RALPH iteration..."
echo ""

# Build the context and run Claude
claude -p \
  --permission-mode acceptEdits \
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
ONLY WORK ON A SINGLE SUB-ISSUE PER ITERATION."

echo ""
echo "--- RALPH iteration complete. Review changes before running again. ---"
