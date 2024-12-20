variable "region" {
  type        = string
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "vpc_id" {
  description = "VPC id"
  type        = string
}

variable "ec2_security_group_id" {
  description = "VPC id"
  type        = string
}

variable "rds_sg_name" {
  description = "RDS SG name"
  type        = string
}

variable "rds_name" {
  description = "RDS name"
  type        = string
}

variable "allocated_storage" {
  description = "Allocated storage in GB for RDS"
  type        = number
}

variable "engine_version" {
  description = "MySQL engine version"
  type        = string
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
}

variable "db_name" {
  description = "Database name"
  type        = string
}

variable "db_username" {
  description = "Database username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "backup_retention_period" {
  description = "retention days"
  type        = number
}

variable "storage_type" {
  description = "storage type"
  type = string
}

variable "database_engine" {
  description = "database engine"
  type = string
}

variable "rds_subnet_group_name" {
  description = "rds subnet group name"
  type = string  
}

variable "private_subnet_ids" {
  description = "private subnet ids"
  type = string
}