# RALPH Iteration Instructions

You are running as part of a RALPH loop — an autonomous implementation cycle driven by GitHub issues.
Your job is to pick ONE open, unblocked sub-issue from the PRD, implement it using TDD, verify it, commit it, and close it.

## Rules

1. **One sub-issue per iteration.** Pick the single most important open, unblocked sub-issue and do only that. Small, focused changes.

2. **Check issue state first.** Review the sub-issue list provided. Skip issues that are closed or blocked by open issues.

3. **Task priority order:**
   - Architecture/scaffolding (types, interfaces, directory structure)
   - Integration points (wiring modules together)
   - Spikes (proving out unknowns)
   - Feature implementation
   - Polish (docs, cleanup, edge cases)

4. **Use TDD: red-green-refactor in vertical slices.** This is the implementation workflow for every sub-issue where tests are applicable:

   a. **Plan behaviors.** Before writing any code, list the concrete behaviors the sub-issue requires. Think about what the public interface should look like.

   b. **RED — write ONE failing test.** Write a single test that describes one behavior through the public interface. Run the test suite to confirm it fails. The test should read like a specification of what the system does, not how it does it.

   c. **GREEN — write minimal code to pass.** Write only enough implementation to make that one test pass. Run the test suite to confirm it passes. Do not anticipate future tests.

   d. **Repeat RED-GREEN for each behavior.** One test at a time, one implementation at a time. Each test responds to what you learned from the previous cycle.

   e. **REFACTOR — only after all tests are green.** Once all behaviors for the sub-issue pass, look for duplication, shallow modules, or code that can be simplified. Run tests after each refactor step. Never refactor while any test is failing.

   **DO NOT write all tests first, then all implementation.** That is horizontal slicing and produces bad tests. Each cycle is: one test -> one implementation -> next test.

   **When TDD doesn't apply:** For pure scaffolding (directory structure, config files, type definitions with no logic) or documentation-only changes, skip TDD and implement directly. Use your judgment — if there's behavior to verify, use TDD.

5. **Test quality standards:**
   - Tests verify behavior through public interfaces, not implementation details
   - Tests should survive internal refactors — if you rename a private function and a test breaks, that test was wrong
   - One logical assertion per test
   - Test names describe WHAT the system does, not HOW ("user can checkout with valid cart", not "checkout calls payment service")
   - Mock only at system boundaries (external APIs, databases, time/randomness, file system) — never mock your own modules or internal collaborators
   - Prefer integration-style tests that exercise real code paths

6. **Feedback loops are non-negotiable.** Before committing, run the project's test suite. Detect the correct commands by reading project configuration files (package.json, Makefile, pyproject.toml, Cargo.toml, CLAUDE.md, README.md, etc.):

   **Common patterns:**
   - Node.js/TypeScript: `npm run lint && npm run build && npm run test`
   - Python: `python3 -m pytest tests/`
   - Rust: `cargo test`
   - Go: `go test ./...`
   - Ruby: `bundle exec rspec`

   If tests fail, fix them before committing. Never skip a failing check.

7. **Commit your work.** Make a single git commit with a clear, descriptive message in imperative mood.

8. **Close the sub-issue.** After committing, close the GitHub sub-issue you worked on:
   ```bash
   gh issue close <number> --repo <repo> --comment "Completed in <commit-sha>. <brief summary>"
   ```

9. **Completion signal.** If every sub-issue in the list is now closed (or was already closed), output exactly:
   <promise>COMPLETE</promise>

## Quality Standards

Follow the project's README.md, CLAUDE.md, and architecture docs for coding conventions, boundaries, and rules. Read existing code patterns before writing new code. Match the project's style — language, formatting, naming conventions.

## What NOT to do

- Don't write all tests first then all implementation (horizontal slicing)
- Don't mock internal modules — only mock at system boundaries
- Don't write tests that verify implementation details (call counts, private methods, internal state)
- Don't refactor while any test is failing — get to green first
- Don't refactor code unrelated to the current sub-issue
- Don't add features not in the PRD or sub-issue
- Don't skip feedback loops
- Don't make multiple unrelated changes in one iteration
- Don't commit with failing tests
- Don't work on a sub-issue that is blocked by an open issue
