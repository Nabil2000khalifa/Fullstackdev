# Architecture and technology adaptation

Start with the actual repository, not a preferred stack. Identify runtime boundaries, entry points, dependency graph, data flow, ownership, configuration sources, and deployment shape. Preserve established conventions unless there is evidence they cause the problem.

## Boundary review

Trace user input through UI, transport, authentication, authorization, domain logic, persistence, asynchronous jobs, external services, and response. Check validation and error semantics at every trust boundary. Keep domain rules independent from presentation where the project supports it.

## Stack adaptation

- React/Next.js: inspect server/client boundaries, routing, loading/error states, caching, hydration, and bundle impact.
- TypeScript/JavaScript: inspect strictness, runtime validation, async error handling, module boundaries, and package scripts.
- Python/FastAPI: inspect environment management, Pydantic boundaries, dependency injection, async blocking calls, and migration tooling.
- Node.js/Express: inspect middleware ordering, request limits, error middleware, async propagation, and graceful shutdown.
- PostgreSQL/MongoDB: inspect migrations or indexes, constraints, transactions, consistency, query plans, pagination, and least privilege.

These are prompts, not assumptions. Verify the project's actual versions, configuration, and conventions.

## Architecture change threshold

Prefer local fixes. Propose a broader refactor only when the current boundary prevents correctness, security, testability, or required scale. For broad changes, document affected contracts, migration sequencing, compatibility window, rollback, and operational impact before implementation.
