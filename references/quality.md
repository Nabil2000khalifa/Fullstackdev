# Five-level application quality system

Evaluate levels in order. A higher level requires all previous levels to pass. Each check is `passed`, `failed`, `blocked`, or `unverified`; execution-required checks cannot pass from inspection alone.

## Level 1 — Basic integrity

The app starts, dependencies resolve, compilation/type checks are clean where configured, and primary services initialize without critical errors.

## Level 2 — Frontend and visual quality

Responsive viewports, supported-browser checks, no collisions or clipping, consistent visual hierarchy, working navigation and controls, readable typography, and accessible semantics/focus behavior.

## Level 3 — Functional and business quality

Critical workflows, API integration, validation, calculations, edge cases, persistence, and state transitions are verified by appropriate tests.

## Level 4 — Security and data integrity

Authentication, authorization, validation, sensitive-data protection, injection defenses, dependency/configuration review, constraints, transactions, and consistency checks pass with no unresolved critical findings.

## Level 5 — Production readiness

Regression suites, performance risks, observability, deployment configuration, backup/recovery, operational runbooks, and remaining risks are documented and verified as applicable.

Use the report format: `Level | status | evidence | gaps | next action`. Never label an application production-ready while a critical security issue or an unverified release-critical check remains.
