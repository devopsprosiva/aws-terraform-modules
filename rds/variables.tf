variable "vpc_cidr" {
  type    = string
}

variable "vpc_id" {
    type    = string
  }

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The username for the database"
  type        = string
}

variable "db_password" {
  description = "The password for the database"
  type        = string
}

variable "db_instance_type" {
  description = "The instance type for the database"
  type        = string
}

variable "db_subnet_group_name" {
  description = "The name of the subnet group for the database"
  type        = string
}

variable "db_security_group_ids" {
  description = "The IDs of the security groups for the database"
  type        = list(string)
}

variable "engine" {
  description = "The engine type for the database"
  type        = string
}

variable "engine_version" {
  description = "The engine version for the database"
  type        = string
}