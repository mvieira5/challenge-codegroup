variable "region" {
  type        = string
}

variable "ec2_name" {
  description = "EC2 name"
  type        = string
}

variable "sg_name" {
  description = "SG name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_subnet_id" {
  description = "Public Subnet ID"
  type        = string
}

variable "allowed_ssh_ip" {
  description = "SSH ip"
  type        = string
}

variable "ami_id" {
  description = "AMI"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}
