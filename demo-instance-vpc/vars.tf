#key access
variable "AWS_ACCESS_KEY" {
 description = "The AWS access key."
 default     = "put_your_key"
}

#key secret
variable "AWS_SECRET_KEY" {
 description = "The AWS secret key."
 default     = "put_your_secret_ket"
}

#put region aws ec2
variable "AWS_REGION" {
  default = "us-east-1"
}


#######variabel map string########
         
#instance type aim
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-055df5de4f42cf331"
    us-west-2 = "ami-0fd8c7e17ea571de9"
    eu-west-1 = "ami-0f25e5c5323d45772"
  }
}

