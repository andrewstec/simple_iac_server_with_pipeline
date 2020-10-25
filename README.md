# simple_iac_server_with_pipeline

## Concept Overview

Source code is pushed to a repository with Infrastructure as Code (IaC), which triggers a deployment of the web-server. GitHub Actions will support the build process of the 

## Project Outline

- Deploy Nginx webserver
- Configure Https and TLS
- Dockerize logic
- Break project into CI/CD pipeline

## Technical Build Flow Plan

1. Github repository recieves new code and starts next steps below:
 a. Down/up the Nginx server infrastructure environment
   - This can be in a script
 b. Build Docker container with Nginx source and configure for Https and TLS
   - (bonus: configure renewal of TLS certs using cron job)
 c. Start web-server with functioning Https and TLS secure "Hello World!"

## Requirements

### Task 1

- Configure Github repository to use action to start script
- Parameterize secure environment variables to work with Github Action

### Task 2

- Use some default environment (pre-configured container image, alpine linux, etc.)
- Destroy pre-existing environment if it exists
- Deploy new environment

### Task 3

- Configure Dockerfile to build Nginx image (check to see if let's encrypt and Nginx integrated image already exists). 
- Implement Docker image build in up/deployment script.

### Task 4

- Write script to configure Https and TLS if Nginx/Let's Encrypt image does not exist
- Make it robust enough to renew with a CRON job or not renew if not due for renewal

### Task 5 (Optional)

- Break steps into pipeline steps in Github Actions


