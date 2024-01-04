provider "aws" {
  region = var.region

  # assume_role {
  #   role_arn = ""
  # }

  default_tags {
    tags = {
      environment = "circleci"
      created-by  = "terraform"
      label       = var.label
      app         = var.app
    }
  }
}