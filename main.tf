
resource "aws_s3_bucket" "mybucket" {
  bucket = "mrcxdftfnot-${terraform.workspace}"
  tags = {
    Name        = local.tag_value
    Environment = "MIP"
  }
}

resource "aws_s3_bucket_acl" "mybucket_acl" {  
  bucket = aws_s3_bucket.mybucket.id  
  acl = "private"
}
