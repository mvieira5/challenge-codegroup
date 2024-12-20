provider "aws" {
  region = var.region
}

resource "aws_security_group" "codegroup_rds_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_groups = [var.ec2_security_group_id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.rds_sg_name
  }
}

resource "aws_db_instance" "codegroup_rds_mysql" {
  allocated_storage    = var.allocated_storage
  engine               = var.database_engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  backup_retention_period = var.backup_retention_period
  delete_automated_backups = true
  storage_type           = var.storage_type
  skip_final_snapshot    = true

  tags = {
    Name = var.rds_name
  }
}

resource "aws_db_subnet_group" "codegroup_rds_subnet_group" {
  name       = var.rds_subnet_group_name
  subnet_ids = [ var.private_subnet_ids ]

  tags = {
    Name = var.rds_subnet_group_name
  }
}
