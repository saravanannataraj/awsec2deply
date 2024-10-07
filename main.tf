
terraform {
  backend "s3" {
    bucket = "saravananterraformstate"
    key    = "terraform.state"
    region = "ap-south-1"
  }
}

provider "aws" {
    region     = "ap-south-1"
}


resource "aws_vpc" "vpc-test" {
  cidr_block = "10.10.0.0/16"


  tags = {
    Name = "Instance2"
  }
}