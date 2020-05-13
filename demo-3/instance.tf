provider "aws" {
  access_key = "!your_key!"
  secret_key = "!your_sec_key!"
  region     = "us-east-1"
}

#resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"

  instance_tenancy = "instance_tenancy"
#"dedicated" #!! for future all vpcs should be made with instance_tenancy as shared cause dedicated means we have dedicated servers, it costs a lot.

  tags = {
    Name = "testing_vpc"
  }
}



