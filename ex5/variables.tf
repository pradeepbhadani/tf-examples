variable "profile" {
  description = "AWS Profile to use."
  type        = "string"
}

variable "region" {
  description = "AWS Region name"
  type        = "string"
  default     = "us-west-2"
}

variable "subnet-id" {
  description = "Subnet ID for spinning up AWS EC2 instance."
  type        = "string"
}

variable "tags" {
  description = "Tags to apply"
  type        = "map"
}

variable "r53-record-name" {
  description = "Route53 record name"
  type        = "string"
}
