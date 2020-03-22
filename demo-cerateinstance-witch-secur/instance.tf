
resource "aws_instance" "exemple" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = var.TYPE_MEM[var.INSTANCE_TYPE]
  key_name      = var.KEY_PEM[var.AWS_KEY_PEM] 
  vpc_security_group_ids = ["${var.SECURITY_GROUPS[var.S1]},${var.SECURITY_GROUPS[var.S2]},${var.SECURITY_GROUPS[var.S3]}"]
  tags = {
    Name = var.TAG_NAME
  }
}

