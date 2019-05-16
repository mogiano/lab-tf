output "IP Public:" {
  value = "${aws_instance.LabIaC.*.public_ip}"
}

output "DNS:" {
  value = "${aws_instance.LabIaC.*.public_dns}"
}

output "Key:" {
  value = "${var.key_name}"
}


