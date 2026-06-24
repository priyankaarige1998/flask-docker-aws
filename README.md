# End-to-End DevOps Pipeline for Containerized Flask Application on AWS

## Project Overview

This project demonstrates an end-to-end DevOps workflow by provisioning AWS infrastructure using Terraform, deploying a containerized Flask application on AWS EC2, automating deployments with GitHub Actions, and extending the deployment to Kubernetes using Kind.

The objective was to build a complete DevOps pipeline covering Infrastructure as Code (IaC), containerization, CI/CD, cloud deployment, and Kubernetes orchestration.

---

## Architecture

```text
Developer
    |
    v
GitHub Repository
    |
    v
GitHub Actions CI/CD
    |
    v
AWS EC2 (Provisioned using Terraform)
    |
    +----------------------+
    |                      |
    v                      v
 Docker Container      Kind Kubernetes Cluster
    |                      |
 Gunicorn             Deployment (2 Replicas)
    |                      |
 Nginx Reverse Proxy   Kubernetes Service
    |                      |
    +-----------> Browser <-----------+
```

---

## Technologies Used

* AWS EC2
* Terraform
* Docker
* Python Flask
* Git & GitHub
* GitHub Actions
* Kubernetes
* Kind
* kubectl
* Gunicorn
* Nginx
* Linux (Ubuntu)

---

## Features

### Infrastructure as Code

* Provisioned AWS EC2 infrastructure using Terraform.
* Configured Security Groups and networking rules.
* Managed infrastructure through code instead of manual console operations.

### Containerization

* Dockerized a Python Flask application.
* Built reusable Docker images.
* Managed application deployment using containers.

### CI/CD Automation

* Implemented GitHub Actions pipeline.
* Automated deployment on every push to the main branch.
* Eliminated manual deployment steps.

### Production-style Deployment

* Used Gunicorn as the WSGI application server.
* Configured Nginx as a reverse proxy.
* Exposed the application through standard HTTP ports.

### Kubernetes Deployment

* Created a Kubernetes cluster using Kind on AWS EC2.
* Deployed the Flask application using Kubernetes Deployments.
* Configured multiple Pod replicas for high availability.
* Exposed the application using Kubernetes Services.
* Demonstrated Kubernetes self-healing and scaling concepts.

---

## Project Workflow

### Phase 1: Infrastructure Provisioning

1. Configure AWS CLI.
2. Create IAM user and permissions.
3. Provision EC2 instance using Terraform.
4. Configure Security Groups and SSH access.

### Phase 2: Application Deployment

1. Develop Flask application.
2. Create Dockerfile.
3. Build Docker image.
4. Run containerized application on EC2.

### Phase 3: CI/CD Automation

1. Create GitHub repository.
2. Configure GitHub Actions workflow.
3. Store EC2 credentials using GitHub Secrets.
4. Automate deployment pipeline.

### Phase 4: Production Enhancements

1. Configure Gunicorn.
2. Configure Nginx reverse proxy.
3. Validate application accessibility through browser.

### Phase 5: Kubernetes Extension

1. Install kubectl and Kind.
2. Create Kubernetes cluster.
3. Load Docker image into cluster.
4. Create Kubernetes Deployment.
5. Create Kubernetes Service.
6. Verify application accessibility.

---

## Kubernetes Resources

### Deployment

* Replica Count: 2
* Container Runtime: Docker
* Application: Flask

### Service

* Service Type: NodePort / Port Forwarding
* Exposes Flask application running inside Kubernetes Pods.

---

## Key Learnings

* Infrastructure provisioning using Terraform
* AWS EC2 administration
* Docker image creation and container management
* CI/CD implementation with GitHub Actions
* Nginx reverse proxy configuration
* Gunicorn application serving
* Kubernetes Deployments, Pods, and Services
* Container orchestration concepts
* Troubleshooting cloud and containerized environments

---

## Outcome

Successfully built and deployed an end-to-end DevOps solution integrating:

* Infrastructure as Code (Terraform)
* Cloud Computing (AWS EC2)
* Containerization (Docker)
* CI/CD Automation (GitHub Actions)
* Reverse Proxy & Application Serving (Nginx + Gunicorn)
* Container Orchestration (Kubernetes)

The final application was successfully deployed and accessed through Kubernetes running on AWS EC2.
