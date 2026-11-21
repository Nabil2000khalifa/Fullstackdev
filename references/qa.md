# Testing and quality assurance reference

Choose the smallest test layer that proves the behavior, then run regression checks for affected dependencies:

1. syntax, formatting, lint, and type checks;
2. unit tests for pure rules and calculations;
3. integration/API tests for contracts, authorization, persistence, and failures;
4. end-to-end tests for critical user workflows;
5. browser and responsive checks where visual behavior is in scope;
6. security and dependency checks where risk warrants them.

For each command record the exact command, date, environment, result, and relevant failure output. Separate current evidence from historical evidence. Test success, failure, loading, empty, disabled, retry, timeout, unauthorized, and malformed states where applicable.

After a fix, reproduce the original failure, verify the fix, and run tests covering callers and dependents. If a tool or browser is unavailable, mark the check blocked or unverified rather than substituting an assumption.
