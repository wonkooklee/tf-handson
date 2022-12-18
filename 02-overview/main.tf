terraform {
  required_providers {
    aws = {
      source  = "hashcorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-011899242bb902164"
  instance_type = "t2.micro" # free-tier
}
