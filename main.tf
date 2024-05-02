# --------------------------------------------
# Terraform configration
# --------------------------------------------
terraform {
  required_version = "1.8.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket  = "tastylog-tfstate-bucket-kamakari"
    key     = "tastylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform"
  }
}

# --------------------------------------------
# Provider
# --------------------------------------------
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

# --------------------------------------------
# Variables
# --------------------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}