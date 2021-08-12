provider "aws" {
  region = "us-east-2"
  profile = "mar-terra"
}

variable "vpcid" {
  type= string
  default ="vpc-c73488ac"
}


resource "aws_security_group" "terraform_ec2_tera" {
  name        = "terraform_ec2_tera"
  description = "terraform example for ec2"
  vpc_id      = var.vpcid

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
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

variable "amiid" {
  default = "ami-09558250a3419e7d0"
}

resource "aws_instance" "terraform_ec2-instance2" {
  ami           = var.amiid
  instance_type = "t2.micro"
  key_name = "nw_key"
  
  
  tags = {
    Name = "Terraform ec2 instance2"
  }

  }
