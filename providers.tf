terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
        }
    }
}

# Configure the AWS Provider
provider "aws" {
    access_key = ""
    secret_key = ""
}
