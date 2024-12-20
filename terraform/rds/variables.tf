variable "region" {
  type        = string
}

variable "vpc_id" {
  type        = string
}

variable "public_subnet_id" {
  type        = string
}

variable "ami_id" {
  type        = string
}

variable "instance_type" {
  type        = string
}

variable "ec2_name" {
  type        = string
}

variable "allowed_ssh_ip" {
  type        = string
}

variable "sg_name" {
  type        = string
}

variable "s3_bucket_name" {
  type        = string
}

variable "instance_role_name" {
  type        = string
}

variable "policy_name" {
  type        = string
}

# RDS
variable "private_subnet_ids" {
  type        = list(string)
}

variable "allocated_storage" {
  type        = number
}

variable "database_engine" {
  type        = string
}

variable "engine_version" {
  type        = string
}

variable "instance_class" {
  type        = string
}

variable "db_username" {
  type        = string
}

variable "db_password" {
  type        = string
  sensitive   = true
}

variable "backup_retention_period" {
  type        = number
}

variable "storage_type" {
  type        = string
}

variable "rds_name" {
  type        = string
}

variable "rds_sg_name" {
  type        = string
}

variable "rds_subnet_group_name" {
  type        = string
}
