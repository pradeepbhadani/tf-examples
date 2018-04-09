variable "profile" {
  description = "AWS Profile to use."
  type        = "string"
}

variable "region" {
  description = "AWS Region name"
  type        = "string"
  default     = "us-west-2"
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

variable "emr-release" {
  description = "EMR Version"
  default     = "emr-5.12.1"
}

variable "emr-logs-location" {
  description = "S3 bucket location to store EMR logs"
}

variable "emr-service-role" {
  description = "EMR Service Role to use"
  default     = "EMR_DefaultRole"
}

variable "emr-master-sg" {
  description = "EMR Master security group"
}

variable "emr-additional-master-sg" {
  description = "EMR additional master security group"
}

variable "emr-slave-sg" {
  description = "EMR Slave security group"
}

variable "emr-additional-slave-sg" {
  description = "EMR additional Slave security group"
}

variable "emr-service-sg" {
  description = "EC2 service-access security group"
}

variable "emr-ec2-instance-profile" {
  description = "EC2 instance profile to use"
  default     = "EMR_EC2_DefaultRole"
}

variable "master-ec2-instance-type" {
  description = "EC2 instance type for Master"
  default     = "m4.large"
}

variable "core-ec2-instance-type" {
  description = "EC2 instance type for Core"
  default     = "m4.large"
}

variable "core-instance-cnt" {
  description = "Number of core instances"
  default     = "1"
}
