output "instance-id" {
  value = "${aws_instance.tf-example-4.id}"
}

output "instance-private-ip" {
  value = "${aws_instance.tf-example-4.private_ip}"
}

output "instance-keypair" {
  value = "${aws_instance.tf-example-4.key_name}"
}
