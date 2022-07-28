terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "edstem_server" {
   ami           = "ami-052efd3df9dad4825"
   instance_type = "t2.micro"

   tags = {
     Name = var.instance_name
   }
 }
 