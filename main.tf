resource "aws_instance" "LabIaC"{
  ami             = "${var.base_ami}"
  instance_type   = "${var.instance_type}"
  #volume_id       = "${var.volume_id}"
  key_name        = "${var.key_name}"
  user_data       = "${file("nginx.sh")}"
  security_groups = ["SG_LabIaC"]

    tags {
    Name          = "${var.instance_name}"
    }
}
