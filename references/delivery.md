# Delivery, observability, and operations

Production readiness includes more than a passing build. Review configuration separation, secrets injection, migrations, health/readiness checks, graceful shutdown, logging, metrics, tracing, alerts, rate limits, backups, restore drills, deployment order, rollback, and incident ownership.

## Operational questions

- Can operators tell whether the service is healthy, degraded, or unavailable?
- Are logs structured, useful, redacted, and correlated without leaking secrets?
- Are timeouts, retries, circuit breakers, and idempotency appropriate for each dependency?
- Can a schema or API change roll out without breaking old clients?
- Is the migration reversible or is a tested recovery procedure documented?
- Are performance budgets and capacity assumptions measured?
- Are privacy, retention, accessibility, and compliance requirements recorded?

## Release evidence

Record commit or build identifier, environment, migrations, configuration changes, tests, smoke checks, known risks, monitoring checks, rollback trigger, and rollback procedure. Separate "ready to deploy" from "deployed successfully"; prove the latter with deployment and smoke-test evidence.
