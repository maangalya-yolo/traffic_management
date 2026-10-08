# Contributing

## Branch workflow

- `main`: production-ready releases
- `develop`: integration branch for ongoing work
- `feature/*`: short-lived feature branches for work such as security hardening, auth, deployment, or bug fixes

## Local setup

1. Create a feature branch from `develop`.
2. Configure environment variables from `.env.example`.
3. Run backend tests with Maven.
4. Keep modifications incremental and validated.

## Pull request expectations

- require code review before merge
- keep changes scoped to one concern
- avoid committing secrets or local environment files
- verify tests and security checks
- document discovered findings honestly

## Security expectations

- do not log plaintext passwords or access tokens
- use BCrypt or equivalent hashing for credentials
- validate all request payloads
- restrict sensitive endpoints by role
- prefer safe, minimal changes over broad rewrites
