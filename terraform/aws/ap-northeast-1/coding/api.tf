resource "aws_s3_bucket" "data_bucket" {
  bucket = "talk4u-data"
  region = "ap-northeast-1"
  acl    = "private"

  tags {
    Name        = "Talk4u Data"
    Description = "Bucket for test data and user submissions"
    Environment = "Dev"
  }
}
