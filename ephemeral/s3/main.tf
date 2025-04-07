# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }

provider "aws" {
  region = "us-east-1"
}

module "s3" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  bucket = var.bucket
}

variable "bucket" {
  description = "The name of the bucket."
  type        = string
  default     = null
}
