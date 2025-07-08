terraform {
  backend "s3" {
    bucket         = "iac-demo-tf-state"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "iac-demo-lock"
  }
}