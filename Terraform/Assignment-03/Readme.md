# Deployment Steps

Follow these steps to deploy the NGINX server using Terraform:

## 1. Write the Terraform Configuration
Create the `main.tf`, `variables.tf`, and `outputs.tf` files in your Terraform project directory. Paste the respective contents into these files as outlined in the project structure.

## 2. Initialize Terraform
Run the following command in your project directory to initialize Terraform:

This will download the necessary Terraform provider plugins.

## 3. Plan the Deployment
Execute the following command to preview the actions Terraform will perform:

This step will show you what resources Terraform will create, modify, or destroy.

## 4. Apply the Configuration
To create the infrastructure, run:


You will need to confirm the action when prompted. This step will actually provision the resources defined in your Terraform configuration.

## 5. Access the NGINX Server
After the successful deployment, use the public IP address displayed in the Terraform output to access your NGINX server. You should see the default NGINX landing page.

## 6. Cleanup
When the resources are no longer needed, you can delete everything that Terraform created to prevent further charges. Run:


Confirm the action when prompted to remove all provisioned resources.