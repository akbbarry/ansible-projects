# Ansible Projects

This repository contains Ansible automation projects for server configuration, Docker deployment, AWS EC2, and Kubernetes deployment.

## Project Structure

- `roles/` - Reusable Ansible roles
- `deploy-docker-ec2-user.yaml` - Docker deployment using ec2-user
- `deploy-docker-new-user.yaml` - Docker deployment for a new user
- `deploy-docker-with-roles.yaml` - Docker deployment using Ansible roles
- `deploy-nexus.yaml` - Nexus deployment
- `deploy-node.yaml` - Node.js deployment
- `deploy-to-k8s.yaml` - Kubernetes deployment
- `inventory_aws_ec2.yaml` - AWS EC2 dynamic inventory
- `my-playbook.yaml` - Main Ansible playbook
- `ansible.cfg` - Ansible configuration
- `prepare-ansible-server.sh` - Prepares the Ansible control server
- `project-vars` - Project variables
- `requirements.txt` - Python dependencies
- `requirements.yml` - Ansible collection requirements

## Docker Configuration

The `my-playbook.yaml` playbook configures an AWS EC2 instance with:

- Docker
- Docker daemon
- Python 3
- pip
- Docker Python SDK
- Docker Compose

The playbook uses Ansible privilege escalation where required and starts the Docker service automatically.

## AWS EC2 Dynamic Inventory

The project uses the Ansible `amazon.aws.aws_ec2` dynamic inventory plugin.

The inventory discovers running EC2 instances in AWS and filters the target instance using its `Name` tag.

Example target:

```text
ansible-target
