variable "instance_name" {
  default = "LabIaC"
}
variable "volume_id" {
  default = "VOL_LabIaC"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "base_ami" {
  default = "ami-0a313d6098716f372"
}


variable "aws_access_key" {
    default = "x"
}

variable "aws_secret_key" {
    default = "x"
}

variable "key_name" {
  default = "lab"
}

variable "aws_region" {
  default = "us-east-1"
}



