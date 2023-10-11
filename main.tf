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
  error_html_filepath = "${path.root}${var.index_html_filepath}"
  index_html_filepath = "${path.root}${var.index_html_filepath}"
  content_version = var.content_version
  assets_path = "${path.root}${var.assets_path}"
}