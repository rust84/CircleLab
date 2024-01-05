provider "aws" {
  region = var.region

  assume_role {
    role_arn = "arn:aws:iam::446168904202:role/terraform-bucket-access"
  }

  default_tags {
    tags = {
      environment = "circleci"
      created-by  = "terraform"
      label       = var.label
      app         = var.app
    }
  }
}