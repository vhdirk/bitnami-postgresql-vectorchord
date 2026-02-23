# PostgreSQL VectorChord Docker Image

## Features
- High-performance PostgreSQL database with VectorChord capabilities.
- Easy to deploy using Docker.
- Automated updates with Renovate.
- Configurable CI/CD pipeline for seamless integration.

## Quick Start Instructions
1. **Pull the Docker Image:**
   ```bash
   docker pull vhdirk/postgresql-vectorchord:latest
   ```

2. **Run the Container:**
   ```bash
   docker run --name vectorchord -d -e POSTGRES_PASSWORD=mysecretpassword vhdirk/postgresql-vectorchord
   ```

## Usage Examples
- **Access the PostgreSQL CLI:**
   ```bash
   docker exec -it vectorchord psql -U postgres
   ```

- **Connecting from an external application:**
   ```bash
   jdbc:postgresql://<host>:<port>/<dbname>
   ```

## Configuration Details
- Environment Variables:
  - `POSTGRES_USER`: Set the PostgreSQL user (default is "postgres").
  - `POSTGRES_PASSWORD`: Set the PostgreSQL user's password.
  - `POSTGRES_DB`: Set the name of the database to create (default is "postgres").

## Automated Updates with Renovate
This repository utilizes Renovate for automated dependency updates to ensure the Docker image is always up to date with the latest security patches and features.

## CI/CD Pipeline Details
- The CI/CD pipeline is set up to automatically build and push Docker images to Docker Hub.
- Required Secrets:
  - **DOCKER_USERNAME**: Your Docker Hub username.
  - **DOCKER_PASSWORD**: Your Docker Hub password.
  
## License
This project is licensed under the MIT License.
