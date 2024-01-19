
data "aws_ami" "Global-assigmet-02" {
  most_recent = true
  }
resource "aws_instance" "Global-assigmet-02-ec2" {
  ami           = data.aws_ami.Global-assigmet-02.id
  instance_type = "t3.micro"

  tags = {
    Name = "dev"
  }
}



# Include the security group resource
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
 
  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.allowed_ip
  }

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.allowed_ip
  }

  ingress {
    description = "Custom port from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = var.allowed_ip
  }

  tags = {
    Name = "manual"
  } 
}

