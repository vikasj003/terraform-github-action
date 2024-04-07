terraform {
  backend "s3" {
    bucket         = "terraform-state-s3-533266993661-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "table-terraform-lock-table"
    encrypt        = true
  }
}
