variable "region" {
  type        = string
}

variable "s3_name" {
  description = "EC2 name"
  type        = string
}

variable "acl_kind" {
  description = "acl kind"
  type        = string
}

variable "versioning_configuration" {
  description = "Enable or disable versioning"
  type        = string  
}

variable "object_ownership" {
  description = "Object Ownership type"
  type        = string
}