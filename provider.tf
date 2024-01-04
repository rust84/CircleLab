provider "aws" {
  region = "eu-west-1"
  profile = "default"

  # assume_role {
  #   role_arn = ""
  # }

  default_tags {
    tags = {
      environment = "circleci"
      created-by = "terraform"
      owner     = "russell"
    }
  }
}