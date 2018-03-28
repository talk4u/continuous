resource "aws_s3_bucket" "tfstate_bucket" {
  bucket = "talk4u-tfstate"
  region = "ap-northeast-1"
  acl    = "private"

  tags {
    Name        = "Talk4u tfstate"
    Environment = "Dev"
  }
}
