#NGNIX Kubernetes Infrastructure
This repository sets up a Kubernetes cluster inside KIND (Kubernetes in Docker) using the Terraform provider kind. Additionally, it deploys NGINX server and NGINX Ingress Controller using Terraform.

Features:
-Kubernetes cluster deployment inside KIND.
-Deployment of NGINX server.
-Deployment of NGINX Ingress Controller.

Tools Used:
-Terraform
-Kubernetes
-KIND (Kubernetes IN Docker)
-NGINX

Getting Started:
Ensure you have Terraform,KIND installed on your local machine.
-Clone this repository.
-Navigate to the repository directory. (/stack/helm_ngnix and /stack/kind_cluster)
-Initialize and apply Terraform configurations.

terraform init
terraform apply
