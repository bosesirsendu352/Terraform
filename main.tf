 Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}
# Launch an EC2 instance from an AMI golden image
resource "aws_instance" "web" {
  ami           = "ami-0e0efb15f9d611a0d"
  instance_type = "t2.micro"
}
resource "aws_security_group" "http_security_group" {
  name_prefix = var.security_group_name
  description = var.security_group_description

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }
}
