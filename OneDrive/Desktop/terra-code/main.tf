terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.5.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "default"
}

# Create a new GitLab Lightsail Instance
resource "aws_lightsail_instance" "lightsail_instance" {
  name              = var.lightsail_name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id

  tags = {
    name  = "utrains devops"
    env   = "dev"
    team  = "devops"
    owner = "ut dev"
  }
}