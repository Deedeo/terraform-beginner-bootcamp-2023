// The provider block needed for the project is defined here
terraform {
  cloud {
    organization = "Deebudapest"

    workspaces {
      name = "terra-house-1"
    }
  }
 
  }

  
provider "aws" {
  region = "us-east-1"
}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}