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

Jenkins Integration
The Jenkins pipeline integrates with this Ansible project to automate
configuration management.

The Jenkins pipeline:

Connects to the Ansible control server using Jenkins SSH credentials.
Creates the Ansible project directory on the control server.
Checks out this repository.
Copies the Ansible project files to the control server.
Prepares the Ansible control server using prepare-ansible-server.sh.
Uses the AWS EC2 dynamic inventory to discover the target instance.
Runs my-playbook.yaml against the target EC2 instance.

The Jenkins pipeline is maintained in:

akbbarry/java-maven-app-Jenkins-jobs

The Jenkinsfile contains the Ansible integration stage.

Ansible Control Server

The Ansible control server is an AWS EC2 instance running Amazon Linux.

The control server is responsible for:

Running Ansible
Discovering AWS EC2 instances
Connecting to the target EC2 instance
Executing Ansible playbooks
Target Server

The target EC2 instance is identified through the AWS EC2 dynamic inventory
using the following tag:
Name=ansible-target

Requirements
Ansible
Python 3
boto3
botocore
AWS CLI
Ansible amazon.aws collection
AWS EC2 instances
SSH access to the target server

Install the required Ansible collection with:
ansible-galaxy collection install amazon.aws

Install Python dependencies with:
pip3 install -r requirements.txt

Running the Playbook

Check the dynamic inventory:
ansible-inventory -i inventory_aws_ec2.yaml --graph

Test connectivity:
ansible all -i inventory_aws_ec2.yaml -m ping

Run the playbook:
ansible-playbook -i inventory_aws_ec2.yaml my-playbook.yaml

Purpose

This project demonstrates infrastructure automation and configuration
management using Ansible, including Docker and AWS EC2 automation.

The Jenkins integration demonstrates how Ansible automation can be executed
as part of a CI/CD pipeline.
