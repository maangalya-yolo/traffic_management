# Security Policy

This project is designed for an academic cybersecurity context and uses a layered defense approach. The backend is the primary security boundary. The repository intentionally keeps configuration in environment variables and example files, never in committed secrets.

## Security Principles

- least privilege for application roles
- BCrypt password hashing
- input validation with Bean Validation
- authorization checks on sensitive endpoints
- role-based access control for admin/operator/viewer actions
- audit logging for sensitive administrative events
- no plaintext passwords or tokens in logs

## Roles

Supported roles are defined in the backend role model and include:

- ADMIN
- OPERATOR
- VIEWER
- legacy operational roles retained for compatibility with the domain model

## Local development defaults

Default seeded users used only for local development are created by the application bootstrap. These are demonstration accounts and must not be used in production.

- admin / Admin@123
- operator / Operator@123
- viewer / Viewer@123

These should be replaced or disabled before deployment to a shared or production environment.

## Secret handling

- Do not commit secrets.
- Store database credentials, JWT secrets, and service credentials in environment variables or a secret manager.
- Use the example file `.env.example` as a safe template only.
- Ensure no `.env` file is committed.

## Reporting

If a vulnerability is found, report it privately to the project maintainer and avoid public disclosure until a fix is available.
