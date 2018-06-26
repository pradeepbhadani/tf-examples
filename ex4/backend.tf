terraform {
  backend "s3" {
    bucket = "my-s3-bucket-tf-state"
    key    = "tfstate-ex4"
    region = "us-west-2"
  }
}
