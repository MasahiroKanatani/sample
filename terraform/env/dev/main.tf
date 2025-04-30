terraform {
  required_version = "1.10.5"

  required_providers {
    aws = {
      version = "5.88.0"
      source  = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "terraform-state-dev"
    key    = "sample/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
