terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

variable "aws_region" {
  type    = string
  default = "eu-west-2"
  description = "The AWS region to deploy resources into."
}

variable "aws_profile" {
  type        = string
  default     = "default"
  description = "The AWS CLI profile to use."
}
