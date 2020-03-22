provider "aws" {
  access_key = "!your_key!"
  secret_key = "!your_sec_key!"
  region     = "us-east-1"
}

#resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "testing_vpc"
  }
}



