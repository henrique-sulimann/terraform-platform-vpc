variable "region" {
  type    = string
  default = "us-east-1"
}
variable "create_vpc" {
  type = string
  default = true
}
variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}
variable "public_routes" {
  type = map(object({
    cidr_block = set(string)
    tags       = map(string)
    }
  ))
  default = null
}
variable "public_subnet_list" {
  type = map(object({
    cidr_block        = string
    availability_zone = string
    tags              = optional(map(string))
  }))
  default = {}
}
variable "private_routes" {
  type = map(object({
    cidr_block = set(string)
    tags       = map(string)
    }
  ))
  default = null
}
variable "private_subnet_list" {
  type = map(object({
    cidr_block        = string
    availability_zone = string
    tags              = optional(map(string))
  }))
  default = {}
}
variable "vpc_name" {
  type    = string
  default = "vpc_main"
}
variable "enable_dns_hostnames" {
  type    = bool
  default = false
}
variable "assign_generated_ipv6_cidr_block" {
  type    = bool
  default = false
}
variable "enable_network_address_usage_metrics" {
  type    = bool
  default = false
}
variable "internet_gateway_name" {
  type    = string
  default = "terraform-igw"
}
