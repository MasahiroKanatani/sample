terraform {
  required_version = "1.12.2"

  required_providers {
    aws = {
      version = "5.100.0"
      source  = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "terraform-state-dev1234"
    key    = "sample/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
