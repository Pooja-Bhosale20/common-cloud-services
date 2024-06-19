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
    access_key = "AKIATCKAPCLQ3LDAQUVU"
    secret_key = "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"
}
