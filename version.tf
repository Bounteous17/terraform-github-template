terraform {
  required_version = ">= 1.3"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.41.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.27.0"
    }
  }
}

