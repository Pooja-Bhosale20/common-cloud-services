terraform {
  backend "s3" {
    bucket = "devops-project-706-tfstate"
    key    = "terraform/common/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}