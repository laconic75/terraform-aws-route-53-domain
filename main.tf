terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.22.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_route53_zone" "public" {
  name = var.dns_root
}

resource "aws_route53_zone" "private" {
  name = var.dns_root

  vpc {
    vpc_id = var.vpc
  }
}
