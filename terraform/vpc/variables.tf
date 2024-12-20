variable "region" {
  type        = string
}

variable "vpc_cidr" {
  type        = string
}

variable "vpc_name" {
  type        = string
}

variable "public_subnets" {
  type        = map(string)
}

variable "public_subnets_names" {
  type        = string
}

variable "private_subnets" {
  type        = map(string)
}

variable "private_subnets_names" {
  type        = string
}

variable "public_rt_name" {
  type        = string
}

variable "private_rt_name" {
  type        = string
}

variable "igw_name" {
  type        = string
}