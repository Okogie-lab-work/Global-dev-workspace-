# Terraform AWS NGINX Server Configuration

This Terraform configuration sets up an NGINX server on AWS.

It includes the necessary resources such as an EC2 instance and a security group to allow HTTP traffic.

## Prerequisites

Before you begin, ensure you have the following:
- Terraform installed on your machine
- An AWS account with the necessary permissions
- AWS CLI configured with your credentials

## Files

- `main.tf`: Contains the Terraform configuration for provider and resources.
- `provider.tf`: Specifies the AWS provider and version.

## Usage

### Step 1: Initialize Terraform

Navigate to the directory containing the Terraform configuration files and run the following command to initialize Terraform:

```bash
terraform init

terrafform fmt

terraform validate

terraform plan 

terraform apply

terraform destroy 