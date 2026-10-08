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
feature/project-foundation
```

## Security note

This repository intentionally keeps secrets in environment variables and example configuration files only. Do not commit real credentials.
