# Secure Development Checklist

## Repository controls

- [ ] protected branch guidance documented
- [ ] no secrets committed to git
- [ ] environment variables used for credentials
- [ ] code review before merge
- [ ] versioned build and dependency lock files retained

## Application controls

- [ ] password hashing with BCrypt
- [ ] role-based authorization for privileged routes
- [ ] validation on all inbound requests
- [ ] secure error handling without stack traces in API responses
- [ ] audit trails for sensitive administrative actions

## Dependency controls

- [ ] dependency scanning completed
- [ ] outdated or vulnerable libraries reviewed
- [ ] authentication and security frameworks kept up to date

## Container/runtime controls

- [ ] minimal runtime images used
- [ ] non-root execution enforced
- [ ] unnecessary files removed
- [ ] no secrets embedded in Docker layers

## Release controls

- [ ] tests run before merging
- [ ] security scans rerun after fixes
- [ ] deployment checklist reviewed before release
