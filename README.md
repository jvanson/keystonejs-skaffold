# Keystone Local Development Project

## Overview

Setup a nodejs project (Keystonejs) that leverages Kubernetes and Skaffold to build and deploy your local changes to Kubernetes easily.
For more details: https://docs.google.com/document/d/1Or9ZwBjWRhbXaz0VfJ_DwGEAcnOhveez7T4lCpW33JE/edit?usp=sharing

## Quick Start

### Prerequisites:

- Kubernetes
- Skaffold:

  - Mac

    - `brew install skaffold`

  - Linux

    - `curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && \ sudo install skaffold /usr/local/bin/ `

  - Windows
    - `https://storage.googleapis.com/skaffold/releases/latest/skaffold-windows-amd64.exe`

### Test, Build and Deploy

- test, build, and deploy: `npm run init`
- tear down: `npm run delete`

### Test

Skaffold runs tests on your local system, not in the docker container, so you'l need to install npm packages (mocha) first.

- Install npm packages: `npm install`
- Run test: `npm test`
- Run tests via skaffold: `npm run test`

To run same mocha tests in docker container:

- `npm run test-deploy`
