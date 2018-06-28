variable "aws-ami-id" {
  description = "AWS AMI Id"
  type        = "string"
  default     = "ami-d874e0a0"
}

variable "instance-type" {
  description = "Instance type"
  type        = "string"
  default     = "t2.micro"
}

variable "subnet-id" {
  description = "Subnet ID for spinning up AWS EC2 instance."
  type        = "string"
}

variable "keypair" {
  description = "AWS Keypair"
  type        = "string"
  default     = "testkeypair"
}

variable "tags" {
  description = "Tags to apply"
  type        = "map"
}

variable "route-53-zone-id" {
  description = "Route53 Zone ID"
  type        = "string"
}

variable "r53-record-name" {
  description = "Route53 record name"
  type        = "string"
}
