Terraform project 2

Use terraforms to provision the following resources:

Your configuration directory should contain main.tf, provider.tf, variable.tf
Ensure that your provider is constraint to  version = "~> 4.0"

1.Follow terraform documentation to create ec2 instance resource in Ireland region with  the tag name = “dev”.
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance


2.Use config file below and create security group ensuring that input variable.tf are provided for the arguments in the resource block.
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
 
  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["116.30.20.50/32"]
 
  }

  ingress {
   description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["116.30.20.50/32"]
 }

   ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
   cidr_blocks      = ["116.30.20.50/32"]
  }

  tags = {
    Name = “manual”
  } 
}


NB:The ec2 and security group resources should be in the main.tf

Please note: initialised, format and validate your configuration file before running plan or apply. When your resources are deployed successfully, please run terraform destroy.


Finally, version control your code in GitHub and share the link on either whatApp or telegram
