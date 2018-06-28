output "instance-id" {
  value = "${aws_instance.tf-example-5.id}"
}

output "instance-private-ip" {
  value = "${aws_instance.tf-example-5.private_ip}"
}

output "route53-endpoint" {
  value = "${aws_route53_record.tf-example-5-route53.fqdn}"
}
