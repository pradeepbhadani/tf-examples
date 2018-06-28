resource "aws_route53_record" "tf-example-5-route53" {
  zone_id = "${var.route-53-zone-id}"
  name    = "${var.r53-record-name}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.tf-example-5.private_ip}"]
}
