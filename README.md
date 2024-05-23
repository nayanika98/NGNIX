# NGINX Kubernetes Infrastructure

This repository sets up a Kubernetes cluster inside KIND (Kubernetes in Docker) using the Terraform provider kind. Additionally, it deploys NGINX server and NGINX Ingress Controller using Terraform.

## Features:
- Kubernetes cluster deployment inside KIND.
- Deployment of NGINX server.
- Deployment of NGINX Ingress Controller.

## Tools Used:
- Terraform
- Kubernetes
- KIND (Kubernetes IN Docker)
- NGINX

## Prerequisites
Before you begin, ensure you have the following installed on your local machine:

- [Terraform](https://www.terraform.io/downloads.html)
- [KIND (Kubernetes IN Docker)](https://kind.sigs.k8s.io/docs/user/quick-start/#installation)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- Docker

## Getting Started:
To get started with this project, follow these steps:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/nayanika98/NGNIX.git
2. Navigate to the repository directory. (/stack/helm_ngnix and /stack/kind_cluster)
    -Initialize and apply Terraform configurations.

    terraform init
    terraform apply

