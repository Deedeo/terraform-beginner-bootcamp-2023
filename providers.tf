// The provider block needed for the project is defined here
terraform {
  cloud {
    organization = "Deebudapest"

    workspaces {
      name = "terra-house-1"
    }
  }
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.16.2"
    }
  }
  }

provider "aws" {
  region = "us-east-1"
}
