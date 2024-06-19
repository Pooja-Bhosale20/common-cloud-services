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
    region = "us-east-1"
    access_key = "AKIAS26FQPCJWEKQRCFR"
    secret_key = "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"
}
