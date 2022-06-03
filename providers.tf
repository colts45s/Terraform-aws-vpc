
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.64.2"
        }
    }
}

provider "aws" {
    region = "us-east-2"
    access_key=var.AWS_ACCESS_KEY
    secret_key=var.AWS_SECRET_ACCESS_KEY
}