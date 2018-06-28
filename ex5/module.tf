module "tf-ex5" {
  source           = "module/ec2-elb"
  subnet-id        = "${var.subnet-id}"
  tags             = "${var.tags}"
  route-53-zone-id = "${data.aws_route53_zone.tf-ex5.zone_id}"
  r53-record-name  = "${var.r53-record-name}.${data.aws_route53_zone.tf-ex5.name}"
}
