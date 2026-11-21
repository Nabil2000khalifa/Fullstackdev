# Installing and activating `fullstackdev`

Copy this directory into the skill directory supported by the target coding agent, or reference `SKILL.md` as the agent's skill entry point. The package is plain Markdown plus optional PowerShell utilities, so it is portable across models and agent runtimes.

## What makes it reliable

`fullstackdev` uses a discovery-first workflow, explicit acceptance criteria, risk-based verification, five quality gates, evidence-based reporting, and repository-local memory. It does not pretend that code inspection equals execution, and it preserves portability by using plain Markdown rather than model-specific memory.

When activating it for an application:

1. Run `scripts/validate-skill.ps1` to validate this package.
2. Run `scripts/initialize-project-memory.ps1 -ProjectRoot <path>` once.
3. Read `<project>/HANDOFF.md`, then reconcile it with the source tree and Git state.
4. Follow `SKILL.md` and load only the relevant references and playbook.
5. Define measurable acceptance checks before implementation.
6. Update memory files after meaningful changes and before handoff.

## Agent compatibility

The skill is runtime-agnostic. Map its actions to the host agent's file, shell, browser, test, search, and Git tools. If a capability is unavailable, mark the corresponding check `blocked` or `unverified`; do not silently substitute an assumption.

The initializer refuses to overwrite existing files. Review generated templates before committing them; keep secrets and sensitive local details out of repositories where appropriate.
