# CI/CD Pipeline Examples

## Overview

This repository contains pipeline examples for the "Hacking CI/CD Pipelines" series.

Each CI/CD tool has its own folder with an example pipeline for:

1. Checking out the source code for the [golang demo API application](https://github.com/wakeward/demo-api-app)
2. Building the `demo-api-app`
3. Running the tests for the `demo-api-app`
4. Building the `demo-api-app` container image
5. Pushing the `demo-api-app` container image to [DockerHub](https://hub.docker.com/repository/docker/wakeward/demo-api-app/general)

Alongside this pipeline defintion are examples for:

- Executing malicious code (reverse shell)
- Dumping any credentials used by the pipeline
