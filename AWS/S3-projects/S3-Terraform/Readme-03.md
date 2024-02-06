# Terraform AWS S3 Bucket Setup Guide

This guide provides detailed instructions on how to use Terraform to create an S3 bucket and configure it for static website hosting. Follow these steps to set up your infrastructure with Terraform.

## Prerequisites

Before you begin, make sure you have the following:

- Terraform installed on your local machine.
- AWS CLI installed and configured with the necessary credentials.

## Step-by-Step Guide

### Step 1: Create Terraform Configuration Files

Start by setting up your Terraform configuration to define the resources you want to manage.

1. **Create a `S3-Import-Resourse.tf` File**:
   - Open your text editor or IDE.
   - Create a new file and name it `S3-Import-Resourse.tf`.

2. **Add Resource Definitions**:
   - Define your infrastructure in the `S3-Import-Resourse.tf` file. 

    - Replace `"my-unique-bucket-name"` with your actual bucket name.
    - Adjust other settings as per your requirements.

### Step 2: Initialize Terraform

After setting up your `S3-Import-Resourse.tf` file:

1. **Open your terminal**.
2. **Navigate to your project directory** where your `S3-Import-Resourse.tf` file is located.
3. **Run `terraform init`**:
    - This command initializes Terraform, downloads the necessary providers, and prepares your project for deployment.

    ```bash
    terraform init
    ```

### Step 3: Plan and Apply Your Configuration

Use Terraform to review the planned changes and apply your configuration.

1. **Plan**:
   - Run `terraform plan` to review the changes Terraform will execute.
   
    ```bash
    terraform plan
    ```


## Conclusion

By following these steps, you will have successfully created an S3 bucket with static website hosting configured using Terraform. Your infrastructure is now managed as code, providing you with the benefits of versioning, reusability, and easier management.

