# AWS Setup Guide

This guide provides step-by-step instructions for setting up AWS resources, including creating an IAM group and provisioning an EC2 instance.

## Table of Contents

- [Stage 1: IAM Group Creation](#stage-1-iam-group-creation)
  - [Assignment 1: Create IAM Group](#assignment-1-create-iam-group)
- [Stage 2: EC2 Instance Provisioning](#stage-2-ec2-instance-provisioning)
  - [Assignment 2: Provision EC2 Instance](#assignment-2-provision-ec2-instance)

## Stage 1: IAM Group Creation

### Assignment 1: Create IAM Group

This assignment involves creating an IAM group with specific users and permissions.

#### Steps:
1. **Navigate to IAM Service:**
   - Open AWS Management Console.
   - Go to Services and select IAM under Security, Identity, & Compliance.

2. **Create IAM Group:**
   - In the IAM dashboard, click on User groups.
   - Click the "Create group" button.
   - Set the group name to `operation-group`.

3. **Attach Policy:**
   - In the "Set permissions" section, search and select `AmazonEC2FullAccess` policy.
   - Click "Next Step" and then "Create Group".

4. **Add Users:**
   - Click on the newly created `operation-group`.
   - In the "Users" tab, click "Add users to group".
   - Create new users by clicking on "Add user". Enter the names: `Adam`, `George`, `Sam`.
   - Add the users to `operation-group`.

## Stage 2: EC2 Instance Provisioning

### Assignment 2: Provision EC2 Instance

This assignment focuses on creating an EC2 instance in the Oregon region with specific configurations.

#### Steps:
1. **Navigate to EC2 Service:**
   - Open AWS Management Console.
   - Go to Services and select EC2 under Compute.

2. **Launch EC2 Instance:**
   - Click on "Instances" from the dashboard.
   - Click "Launch Instances".

3. **Configure Instance:**
   - **Name and tags:** Enter `academy-instance` as the name.
   - **AMI Selection:** Choose Amazon Linux (latest free version).
   - **Instance Type:** Choose `t2.micro`.
   - **Key Pair (login):** Choose an existing key pair or create a new one.
   - **Network Settings:**
     - Ensure it's launched in the default VPC.
     - Add a security group that allows SSH (port 22) access.
   - **Storage:** Choose General Purpose SSD(gp2) and set the size to 8 GiB.

4. **Review and Launch:**
   - Review all settings, then click "Launch".

#### Note:
- Be sure to configure your security group to allow SSH access only from your IP address to maintain security.
- Remember to terminate your instance if it's not in use to avoid unnecessary charges.




# Terraform AWS Resource Management

This guide provides instructions for managing AWS resources with Terraform, including how to import existing resources and verify the setup.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Step 1: Write Terraform Configuration](#step-1-write-terraform-configuration)
- [Step 2: Initialize Terraform](#step-2-initialize-terraform)
- [Step 3: Import Resources](#step-3-import-resources)
- [Step 4: Verify the Configuration](#step-4-verify-the-configuration)

## Prerequisites

- Terraform installed.
- AWS CLI configured with appropriate permissions.

## Step 1: Write Terraform Configuration

Define your AWS resources in `.tf` files. Here's an example of what your Terraform configuration might include:

```hcl
# IAM Group
resource "aws_iam_group" "operation_group" {
  name = "operation-group"
}

# IAM Group Policy Attachment
resource "aws_iam_group_policy_attachment" "attach_policy" {
  group      = aws_iam_group.operation_group.name
  policy_arn = "arn:aws:iam::"
}

# IAM Users
resource "aws_iam_user" "user" {
  for_each = toset(["Adam", "George", "Sam"])
  name = each.value
}

# IAM Group Membership (Note: this resource doesn't support import)
resource "aws_iam_group_membership" "group_membership" {
  name = "operation-group-membership"
  users = [for user in aws_iam_user.user : user.name]
  group = aws_iam_group.operation_group.name
}

# EC2 Instance
resource "aws_instance" "academy_instance" {
  # (Configuration for the EC2 instance)
}



terraform init
# Import the IAM group
terraform import aws_iam_group.operation_group operation-group

# Import IAM users
terraform import 'aws_iam_user.user["Adam"]' Adam
terraform import 'aws_iam_user.user["George"]' George
terraform import 'aws_iam_user.user["Sam"]' Sam

# Import the IAM group policy attachment
terraform import aws_iam_group_policy_attachment.attach_policy operation-group/arn:aws:

# Import the EC2 Instance (replace with your actual instance ID)
terraform import aws_instance.academy_instance i-0123456789abcdef



terraform plan

