# Development playbooks

## New feature

Discover conventions and existing behavior; define acceptance criteria and failure states; map data and authorization flows; implement the smallest vertical slice; add focused tests; verify UI and API integration; update documentation, memory, and handoff.

## Bug fix

Capture a deterministic reproduction and expected result; inspect logs, traces, and relevant history; isolate the root cause; add a regression test; patch minimally; rerun reproduction and dependent tests; record residual risk.

## Audit

Establish scope and threat model; inspect without changing code; classify findings by severity and confidence; provide affected paths, evidence, impact, remediation, and verification; avoid speculative claims and do not conflate style preferences with defects.

## Refactor

Define behavior that must remain invariant; establish baseline tests; refactor in reversible steps; compare public contracts and performance; run regression tests after each coherent step; update decisions only when the architecture truly changes.

## Release or handoff

Reconcile source, Git, memory, and environment; run release checks; document exact evidence and blocked checks; update changelog, test status, known issues, and handoff; name the next action and rollback or recovery path.
