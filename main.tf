
provider "aws" {
    region     = "ap-south-1"
}





# Terraform backend configuration (this part should be placed in your main Terraform configuration)
terraform {
  backend "s3" {
    bucket         = "saravananterraformstate"  # The S3 bucket for storing the state file
    key            = "terraform.state"  # Path to the state file within the bucket
    region         = "ap-south-1"
    encrypt        = true  # Enable encryption for the state file
  }
}

resource "aws_vpc" "vpc-test" {
  cidr_block = "10.10.0.0/16"


  tags = {
    Name = "Instance2"
  }
}



