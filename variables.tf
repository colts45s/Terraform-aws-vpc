# variables.tf
variable "project_name" {
  description = "Project name - used for vpc object names"
  type = string
}

variable "cidr" {
  description = "The CIDR bock used for the VPC"
  type = string
}

variable "AWS_ACCESS_KEY"{}

variable "AWS_SECRET_ACCESS_KEY"{}
