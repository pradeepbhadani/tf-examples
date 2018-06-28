data "aws_route53_zone" "tf-ex5" {
  name         = "yourdomain.com."
  private_zone = true
}
