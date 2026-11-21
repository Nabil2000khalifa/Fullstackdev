# Persistent project memory and handoff

The application repository should contain: `AI_CONTEXT.md`, `PROJECT_STATE.md`, `TASK_TRACKER.md`, `ARCHITECTURE.md`, `TECHNICAL_DECISIONS.md`, `CHANGELOG_AI.md`, `TEST_STATUS.md`, `QUALITY_STATUS.md`, `KNOWN_ISSUES.md`, and `HANDOFF.md`. Start with `HANDOFF.md`, then verify its claims against source and Git.

Update memory after meaningful implementation, architecture, test, or debugging work:

- record exact files and verified behavior;
- distinguish completed, partial, pending, blocked, and unverified work;
- record commands and results, not just conclusions;
- record quality-gate status separately from test history;
- preserve decisions, alternatives, constraints, and unresolved risks;
- keep the handoff concise enough for a new model to act immediately.

Before handoff, reconcile stale claims, list the current working tree state, note pending commands, identify the first next action, and state what the next agent must avoid. Never depend on conversation memory as the source of truth.

## Recovery protocol

Inspect repository and Git state; read handoff, identity, state, tasks, issues, architecture, decisions, and test status; inspect relevant code; then resolve contradictions before editing. Do not overwrite another agent's uncommitted work.
