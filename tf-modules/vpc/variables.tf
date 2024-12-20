variable "region" {
  type        = string
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "igw_name" {
  description = "IGW name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR"
  type        = string
}

variable "public_subnets_names" {
  description = "public subnet name"
  type        = string
}

variable "private_subnets_names" {
  description = "pRIVATE subnet name"
  type        = string
}

variable "public_rt_name" {
  description = "public rt name"
  type        = string
}

variable "private_rt_name" {
  description = "private rt name"
  type        = string
}

variable "public_subnets" {
  description = "public subnet"
  type        = map(string)
}

variable "private_subnets" {
  description = "private subnet"
  type        = map(string)
}
