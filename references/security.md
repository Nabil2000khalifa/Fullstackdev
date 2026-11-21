# Security auditing reference

Perform threat modeling for assets, actors, trust boundaries, entry points, and abuse cases before reviewing controls. Prioritize exploitable impact and provide a concrete remediation and verification step.

Review:

- authentication, session expiry, cookie flags, token storage, password handling, MFA, and account recovery;
- authorization on every server-side resource and action, including tenant isolation and object-level access;
- schema validation, output encoding, SQL/NoSQL/command/template injection, XSS, CSRF, SSRF, path traversal, and unsafe redirects;
- file type, size, storage, scanning, and download controls;
- CORS, security headers, rate limits, replay/idempotency, and denial-of-service exposure;
- secrets, logs, error responses, PII minimization, encryption, dependency vulnerabilities, and production configuration;
- database least privilege, migrations, backups, restore procedures, and transaction boundaries.

Record severity, affected code path, preconditions, evidence, impact, fix, and regression test. Do not include real secrets in reports. A suspected issue remains a risk until verified; a blocked check must say why.
