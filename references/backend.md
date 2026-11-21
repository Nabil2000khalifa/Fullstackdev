# Backend engineering reference

## Business and data correctness

Trace a workflow from request through authorization, validation, domain logic, persistence, and response. Compare frontend assumptions with server rules. Test boundaries: empty, duplicate, maximum, negative, unauthorized, stale, concurrent, and malformed inputs.

For calculations, define units and rounding policy, use decimal-safe arithmetic where money is involved, and independently compute expected examples. Verify aggregation, filtering, sorting, pagination, time zones, and serialization against persisted values.

## API and database integrity

Check request and response schemas, status codes, error shapes, idempotency, transactions, constraints, indexes, migrations, relationship cardinality, and retry behavior. Ensure partial failures cannot leave invalid state. Verify authorization at the server boundary, not only in the UI.

## Reliability and performance

Handle dependency, timeout, network, and database failures with actionable logs and safe user-facing errors. Look for N+1 queries, unbounded results, missing pagination, unnecessary rendering, oversized assets, and cache invalidation problems. Measure before optimizing.

## Maintainability

Follow the existing architecture and language conventions. Keep modules cohesive, names explicit, duplication low, and abstractions proportional to the problem. Remove dead code only when scope permits and update directly related documentation.
