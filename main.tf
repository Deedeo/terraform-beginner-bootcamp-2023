// The provider block needed for the project is defined here
terraform {
   required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
#   cloud {
#     organization = "Deebudapest"

#     workspaces {
#       name = "terra-house-1"
#     }
#   }
 
#   }

  
# provider "aws" {
#   region = "us-east-1"
}

# module "terrahouse_aws" {
#   source = "./modules/terrahouse_aws"
#   user_uuid = var.user_uuid
#   bucket_name = var.bucket_name
#   error_html_filepath = "${path.root}${var.index_html_filepath}"
#   index_html_filepath = "${path.root}${var.index_html_filepath}"
#   content_version = var.content_version
#   assets_path = "${path.root}${var.assets_path}"
# }

provider "terratowns" {
  endpoint = "http://localhost:4567"
  user_uuid="e328f4ab-b99f-421c-84c9-4ccea042c7d1"
  token="9b49b3fb-b8e9-483c-b703-97ba88eef8e0"
}