terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_db_instance" "default" {
  allocated_storage           = 20
db_name ="mydb"
engine = "mysql"
engine_version   = "8.0"
instance_class = "db.t3.micro"
username   = "admin"
password = "Admin1234"
paameter_group_name ="degault.mysq18.0"
skip_final_snapshot = true
publicly_accessible = true

    }
}
