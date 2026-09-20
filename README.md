# Ansible Projects

This repository contains Ansible automation projects for server configuration, Docker deployment, and Kubernetes deployment.

## Project Structure

- `roles/` - reusable Ansible roles
- `deploy-docker-ec2-user.yaml` - Docker deployment using ec2-user
- `deploy-docker-new-user.yaml` - Docker deployment for a new user
- `deploy-docker-with-roles.yaml` - Docker deployment using Ansible roles
- `deploy-nexus.yaml` - Nexus deployment
- `deploy-node.yaml` - Node.js deployment
- `deploy-to-k8s.yaml` - Kubernetes deployment
- `inventory_aws_ec2.yaml` - AWS EC2 dynamic inventory
- `my-playbook.yaml` - Ansible playbook
- `ansible.cfg` - Ansible configuration

## Kubernetes Deployment

The `deploy-to-k8s.yaml` playbook automates deployment of Kubernetes resources using Ansible.

The playbook uses the Kubernetes Ansible collection and a kubeconfig file to connect to the Kubernetes cluster.

## Requirements

- Ansible
- Python 3
- Kubernetes Python client
- Ansible `kubernetes.core` collection
- Kubernetes cluster and kubeconfig

## Purpose

This project demonstrates infrastructure automation and configuration management using Ansible, including Docker, AWS EC2, and Kubernetes deployments.
