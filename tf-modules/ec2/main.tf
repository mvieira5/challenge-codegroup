provider "aws" {
  region = var.region
}

resource "aws_security_group" "codegroup_ec2_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "ssh"
    cidr_blocks = [var.allowed_ssh_ip]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}

resource "aws_instance" "codegroup_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id

  security_groups = [ aws_security_group.codegroup_ec2_sg.name ] 

  tags = {
    Name = var.ec2_name
  }

  depends_on = [ aws_security_group.codegroup_ec2_sg ]
}
