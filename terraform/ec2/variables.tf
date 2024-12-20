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
