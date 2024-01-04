# module "remote_state" {
#   source = "nozaq/remote-state-s3-backend/aws"
#   enable_replication = false

#   providers = {
#     aws         = aws
#   }
# }

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}