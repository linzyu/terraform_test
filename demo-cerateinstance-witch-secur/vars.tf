#key access
variable "AWS_ACCESS_KEY" {
 description = "The AWS access key."
 default     = "put_your_key"
}

#key secret
variable "AWS_SECRET_KEY" {
 description = "The AWS secret key."
 default     = "put_your_sec_key"
}

#put region aws ec2
variable "AWS_REGION" {
  default = "us-east-1"
}

#put instance ram
variable "INSTANCE_TYPE" {
 description = "The AWS Instance type"
 default     = "type_momory1"
}

#put name key pem 
variable "AWS_KEY_PEM" {
  default = "key_name1"
}

#tag name 
variable "TAG_NAME" {
  default = "testing terraform"
}

#this variabel for security grub
variable "S1" {
  default =  "secur_grup1"
}
variable "S2"{
  default =  "secur_grup2"
}
variable "S3"{
  default =  "secur_grup3"
}



#######variabel map string########
         
variable "SECURITY_GROUPS" {
  type = map(string)
  default = {
    secur_grup1 = "sg-1159ac43"
    secur_grup2 = "sg-0ea073172994667e3"
    secur_grup3 = "sg-0f2f840b2c338f5a7"
  }
} 

#chose list memory
variable "TYPE_MEM" {
  type = map(string)
  default = {
    type_momory1 = "t2.micro"
    type_memory2 = "t2.small"
  }
}

#login key access
variable "KEY_PEM" {
  type = map(string)
  default = {
    key_name1 = "devops"
    key_name2 = "dgitjenkins"
  }
}

#instance type aim
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-055df5de4f42cf331"
    us-west-2 = "ami-0fd8c7e17ea571de9"
    eu-west-1 = "ami-0f25e5c5323d45772"
  }
}

