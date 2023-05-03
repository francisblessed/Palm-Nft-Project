resource "aws_s3_bucket" "mybucket-name" {
  bucket = "palm-nft-bucket007"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}