resource "aws_s3_bucket" "tfstate_bucket" {
  bucket = "devops-project-706-tfstate"
  

  tags = {
    Name        = "TF-State bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "tfstate_bucket_versioning" {
  bucket = aws_s3_bucket.tfstate_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "tfstate_public_access" {
  bucket = aws_s3_bucket.tfstate_bucket.id

  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
  
}



