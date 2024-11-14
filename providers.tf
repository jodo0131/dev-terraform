provider "aws" {
  region = "us-east-1"
}

terraform {
  cloud {
    organization = "nojblog"
    workspaces {
      name = "nojblog-dev"
    }
  }
}