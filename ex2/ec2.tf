resource "aws_instance" "tf-example-2" {
  ami           = "${var.aws-ami-id}"
  instance_type = "${var.instance-type}"
  subnet_id     = "${var.subnet-id}"
  key_name      = "${var.keypair}"
  tags          = "${var.tags}"
}
