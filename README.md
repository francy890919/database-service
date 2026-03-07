# database-service
PostgreSQL database configuration and initialization.

## Tech Stack
- Python 3 + FastAPI
- PostgreSQL
- Docker
- Kubernetes (Minikube)
- Jenkins CI/CD

## Quick Start

### Run Locally
make install
make test
make build

### Run with Docker Compose
docker compose up -d

### Deploy to Kubernetes
kubectl apply -f k8s/
make deploy

## Database Schema
| Table | Description |
|-------|-------------|
| products | Stores product catalog data |
| orders | Stores order management data |

## CI/CD Pipeline
This service uses Jenkins Multibranch Pipeline with the following stages:
1. Build - Install dependencies and lint
2. Test - Run unit tests
3. Security Scan - Bandit SAST + pip-audit dependency scan
4. Container Build - Build Docker image
5. Container Security Scan - Trivy vulnerability scan
6. Container Push - Push to Docker Hub
7. Deploy - Deploy to Kubernetes

## Git Workflow
This repository follows the Git Flow branching model.
See GIT_WORKFLOW.md for details.

## Docker Hub
https://hub.docker.com/r/francyhsu123/database-service
