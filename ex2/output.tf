output "instance-id" {
  value = "${aws_instance.tf-example-2.id}"
}

output "instance-private-ip" {
  value = "${aws_instance.tf-example-2.private_ip}"
}

output "instance-keypair" {
  value = "${aws_instance.tf-example-2.key_name}"
}
