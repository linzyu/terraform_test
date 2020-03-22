provider "aws" {
  access_key = "aws_your_key"
  secret_key = "aws_your_sec_key"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0238c6e72a7e906fc"
  instance_type = "t2.micro"
  key_name = "devops"
  security_groups = ["${aws_security_group.serviceSG.name}"]
  tags = {
    Name = "testing terraform"
  }
}

#creating vpc with existing one
resource "aws_security_group" "serviceSG"{
  name        = "serviceSG"
  description = "create a security group for create ec2  "
  vpc_id      = "!vpc_id_here!"

#this for inbound rules 
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks =  ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
#this for outbound rules
  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


