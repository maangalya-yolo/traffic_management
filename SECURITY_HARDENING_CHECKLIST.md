# Security Hardening Checklist

- Access control: admin/operator/viewer separation enforced
- Exposed ports: only the application port is exposed by default
- Services: avoid unnecessary public service exposure
- Secrets: keep in environment variables and Kubernetes Secrets
- Dependency updates: scan dependencies and review vulnerable packages
- File permissions: avoid world-writable application files
- Least privilege: non-root execution and role-based access controls
- Container security: minimal runtime image and no secrets in image layers
- Kubernetes security: namespace isolation and resource limits
