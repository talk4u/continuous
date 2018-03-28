terraform {
  backend "s3" {
    bucket = "talk4u-tfstate"
    key    = "dev/ap-northeast-1/infra/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "tfstate_bucket" {
  bucket = "talk4u-tfstate"
  region = "ap-northeast-1"
  acl    = "private"

  tags {
    Name        = ""
    Environment = "Dev"
  }
}
