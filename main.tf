terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
    profile = var.ec2_profile
    region = var.aws_region
    
}

resource "aws_instance" "instance1" {
    ami = var.ec2_ami
    count = var.ec2_count
    instance_type = var.instance_type
    security_groups = ["${var.ec2_sg}"]
    subnet_id = element(var.ec2_subnet_id, count.index) #element(list, index)
    tags = {
        Name = "${var.ec2_tags}-${count.index+1}"
    } 
}

