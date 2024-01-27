resource "aws_instance" "nginx_server" {
  ami           = "ami-08ceb58c67626d304"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  security_groups = [aws_security_group.nginx_security_group.name]

  tags = {
    Name = "NGINX_Server"
  }
}




resource "aws_security_group" "nginx_security_group" {
  name        = "nginx_security_group"
  description = "Allow ALL TCP"


  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


output "nginx_server_public_ip" {
  value = aws_instance.nginx_server.public_ip
}