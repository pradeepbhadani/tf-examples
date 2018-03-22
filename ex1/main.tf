provider "aws" {
  profile = "env1"
  region  = "us-west-2"
}

resource "aws_instance" "tf-example-1" {
  ami           = "ami-d874e0a0"
  instance_type = "t2.micro"
  subnet_id     = "subnet-12345"
  key_name      = "testkeypair"
}
