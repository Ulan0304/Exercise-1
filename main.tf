terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.19.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

module "rds_instance" {
  source   = "./modules/rds"
  db_name  = "ulan_db"
  engine   = "mysql"
  password = "UlanUlanUlan"
  username = "ulan"
}
