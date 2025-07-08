variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "The CIDR block for the VPC"
}

variable "azs" {
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
  description = "The availability zones for the VPC"
}

variable "vpc_name" {
  type    = string
  default = "my-vpc"
}

variable "project_name" {
  type    = string
  default = "iac-demo"
}