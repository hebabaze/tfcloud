resource "aws_s3_bucket" "mybucket" {
  bucket = "mrcxdftfnot-${terraform.workspace}"


  tags = {
    Name        = local.tag_value
    Environment = "MIP"
  }

}

locals {
  tag_value = terraform.workspace == "default" ? "WladHadou" : "Sebt_El_Gurdane"
}
