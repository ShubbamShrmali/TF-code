variable "ec2_profile" {
    default = "default"
  
}



variable "aws_region" {
    default = "us-east-1"
  
}

variable "ec2_ami" {
    default = "ami-026b57f3c383c2eec"
  
}

variable "instance_type" {
    default = "t2.micro"
  
}

variable "ec2_count" {
    type = number
    default = "2"
  
}

variable "ec2_sg" {
    default = "sg-0edcb99a3be5a167c"
  
}

variable "ec2_subnet_id" {
    default = ["subnet-0f117818468666ca4","subnet-05ac387ec5c37a15a"]

}

variable "ec2_tags" {
    default = "dev"
  
}
