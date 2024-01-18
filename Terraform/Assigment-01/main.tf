terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}



# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}

data "aws_ami" "Global-project-ec2" {
  most_recent = true
}

resource "aws_instance" "LAb" {
  ami           = data.aws_ami.Global-project-ec2.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_iam_user" "lb" {
  name = "devops"

}
