# Secure Deployment Checklist

## Configuration verification

- [ ] environment variables loaded from `.env` or secret store
- [ ] no hard-coded credentials committed
- [ ] database connection is restricted to the deployment network
- [ ] application port is intentionally limited to required service exposure

## Secret verification

- [ ] Kubernetes Secret contains only non-production placeholders when deployed locally
- [ ] production values sourced from secret manager or encrypted vault
- [ ] secrets never embedded in container image layers

## Database configuration

- [ ] PostgreSQL credentials rotated per environment
- [ ] database access restricted to application service account
- [ ] backups planned for recovery testing

## Access control and logging

- [ ] admin/operator/viewer roles enforced
- [ ] audit logs retained for sensitive changes
- [ ] failed logins tracked and alertable

## Final review

- [ ] dependency/build verification passed
- [ ] security tests and scans recorded
- [ ] final deployment reviewed for public exposure and least privilege

## Operational controls

- restricted physical access to deployment hosts
- administrator access controlled by identity and MFA
- secure credential storage and rotation policy
- patched system and dependency update process
- incident response plan in place
