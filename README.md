# Smart City Traffic Management System

This repository contains the initial foundation for a smart city traffic management platform. The project follows a layered modular monolith architecture with a Spring Boot backend and a React frontend.

This is intentionally the foundation phase of the project. Authentication, RBAC, traffic monitoring, sensors, and deployment hardening will be implemented in later phases.

## Project goals

- Monitor traffic flow and congestion
- Manage traffic signal configuration securely
- Support emergency vehicle priority requests
- Provide operator dashboards and historical traffic analysis
- Enforce server-side RBAC and audit logging in later phases

## Branch strategy

- main: stable release branch
- develop: integration branch
- feature/project-foundation: active development branch for the current foundation work

## Tech stack

- Java 21
- Spring Boot 3.x
- React + Vite
- PostgreSQL
- Docker
- GitHub Actions

## Local setup

### Backend

```bash
cd backend
mvn test
mvn spring-boot:run
```

### Frontend

```bash
cd frontend
npm install
npm run dev
```

### Docker

```bash
docker compose up --build
```

## Branch and release flow

```text
main
  ^
  |
develop
  ^
  |


## 🔐 Secure Build Practices

Our project follows secure development and build practices.

### Secure Build Checklist

| Security Control | Status |
|---|---|
| Git version control | ✅ Implemented |
| Main branch for stable code | ✅ Implemented |
| No hard-coded passwords/secrets | ✅ Checked |
| Maven dependency management | ✅ Implemented |
| Automated GitHub Actions build | ✅ Implemented |
| Automated unit testing | ✅ Implemented |
| Fixed Java build environment | ✅ Implemented |
| Build artifact generation | ✅ Implemented |
| Least-privilege access | ✅ Applied |
| Sensitive configuration protection | ✅ Applied |

### CI/CD Build Process

1. Checkout source code
2. Set up Java environment
3. Build the Spring Boot application
4. Run automated tests
5. Package the application
6. Generate the build artifact

### Security Practices

- Passwords, API keys and sensitive credentials are not stored in source code.
- Dependencies are managed using Maven.
- Automated builds and tests are performed using GitHub Actions.
- Security-sensitive configuration should be provided through environment variables or GitHub Secrets.
- The main branch is maintained as the stable version of the project.
- Code changes should be reviewed before merging.
feature/project-foundation
```

## Security note

This repository intentionally keeps secrets in environment variables and example configuration files only. Do not commit real credentials.
