module "rds" {
  source = "./modules/rds"

  region                 = var.region
  vpc_id                 = var.vpc_id
  private_subnet_ids     = var.private_subnet_ids
  ec2_security_group_id  = aws_security_group.codegroup_ec2_sg.id
  allocated_storage      = var.allocated_storage
  database_engine        = var.database_engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_username            = var.db_username
  db_password            = var.db_password
  backup_retention_period = var.backup_retention_period
  storage_type            = var.storage_type
  rds_name               = var.rds_name
  rds_sg_name            = var.rds_sg_name
  rds_subnet_group_name  = var.rds_subnet_group_name
}

output "rds_endpoint" {
  description = "Endpoint do banco de dados RDS"
  value       = module.rds.rds_endpoint
}
