resource "aws_instance" "LabIaC"{
  ami             = "ami-0a313d6098716f372"
  instance_type   = "t2.micro"
  security_groups = ["SG_LabIaC"]
  key_name        = "${var.key_name}"
  user_data       = "${file("nginx.sh")}"
  
    tags {
    Name          = "LabIaC"
    }
}
