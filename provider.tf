terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

variable "region" {
    type = string
}

variable "bucket" {
    type = string
}

variable "credentials" {
    type = object({
        access_key = string
        secret_key = string
    })
    sensitive = true
}

provider "aws" {
  region     = "us-west-2"
  access_key = var.credentials.access_key
  secret_key = var.credentials.secret_key
}
