# Security Traceability

## Critical requirement

Requirement: Only authorized operators may modify traffic signal configuration.

| Trace element | Detail |
| --- | --- |
| Use Case | An operator updates a traffic light configuration for an intersection. |
| DFD | User -> API -> Authorization -> Service -> Database -> Audit log |
| Threat | Unauthorized signal modification by an unprivileged actor. |
| Vulnerability | Missing role enforcement and weak request validation. |
| Attack Tree | Gain access -> forge request -> send traffic signal update -> modify signal state without permission. |
| User Story | As an operator, I need to update a traffic signal only when I have operator or admin privileges. |
| Sprint Task | Implement role-based endpoint protection and validation for signal changes. |
| Implementation | `OperatorController` checks `@PreAuthorize` and validates the update request before saving. |
| Test | Integration tests verify forbidden access for `VIEWER` and allowed access for `OPERATOR`. |
| Deployment Control | Kubernetes namespace isolation, RBAC, and service restrictions complement the application layer protections. |

## Highest-risk issues

1. Unvalidated or excessive privilege escalation in role handling.
2. Credential leakage through plaintext or debugging output.
3. Insecure configuration exposure in local or shared deployment environments.

## Remaining limitations and future improvements

1. Add fine-grained RBAC with claims-based roles and permissions beyond the current simple role model.
2. Add centralized secrets management and mTLS support for production deployments.
