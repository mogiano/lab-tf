resource "aws_instance" "AmazonLinuxAMI" {
  ami             = "ami-a4c7edb2"
  instance_type   = "t2.micro"
  security_groups = ["SG_AmazonLinuxAMI"]
  key_name        = "${var.key_name}"

    tags {
    Name          = " Amazon Linux AMI = ami-a4c7edb2"
  }
}
