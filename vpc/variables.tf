variable "name" {
  type = string
  description = "VPC Name"
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.2.0/24", "10.0.4.0/24"]
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "enable_dns_support" {
  type = bool
  default = true
}