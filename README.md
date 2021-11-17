# Keystone Local Development Project

## Quick Start

### Prerquisites:

- Docker desktop installed
- Kubernetes installed (via docker desktop)
- Install skaffold:

  - Mac
    `brew install skaffold`

  - Linux
    `curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && \ sudo install skaffold /usr/local/bin/ `

  - Windows
    `https://storage.googleapis.com/skaffold/releases/latest/skaffold-windows-amd64.exe`

### Build and deploy

`npm run init`

### Test

Skaffold runs tests on your local system, not in the docker container so need to install npm packages (mocha) first.
`npm install`
`npm run test`
`npm run init`

To run same mocha tests in docker container:
`npm run test-deploy`
