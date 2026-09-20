terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.65.0"
    }
  }
  backend "s3" {
    bucket = "uygyegue"
    region = "us-east-1"
    key = "tf-files/sg-rules"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}