resource "aws_emr_cluster" "tf-example-3" {
  name                              = "${var.tags["Name"]}"
  release_label                     = "${var.emr-release}"
  applications                      = ["Hadoop", "Hive", "HCatalog"]
  keep_job_flow_alive_when_no_steps = true
  log_uri                           = "s3n://${var.emr-logs-location}/"
  service_role                      = "${var.emr-service-role}"

  ec2_attributes {
    key_name                          = "${var.keypair}"
    subnet_id                         = "${var.subnet-id}"
    emr_managed_master_security_group = "${var.emr-master-sg}"
    additional_master_security_groups = "${var.emr-additional-master-sg}"
    emr_managed_slave_security_group  = "${var.emr-slave-sg}"
    additional_slave_security_groups  = "${var.emr-additional-slave-sg}"
    service_access_security_group     = "${var.emr-service-sg}"
    instance_profile                  = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:instance-profile/${var.emr-ec2-instance-profile}"
  }

  instance_group {
    instance_role  = "MASTER"
    instance_count = 1
    instance_type  = "${var.master-ec2-instance-type}"
    name           = "Master instance group"

    ebs_config {
      iops                 = "1000"
      size                 = "100"
      type                 = "io1"
      volumes_per_instance = "1"
    }
  }

  instance_group {
    instance_role  = "CORE"
    instance_count = "${var.core-instance-cnt}"
    instance_type  = "${var.core-ec2-instance-type}"
    name           = "Core instance group"

    ebs_config {
      iops                 = "1000"
      size                 = "100"
      type                 = "io1"
      volumes_per_instance = "1"
    }
  }

  configurations = <<EOF
[{
  "Classification": "hive-site",
  "Properties": {
    "hive.exec.compress.output": "true",
    "hive.exec.compress.intermediate": "true",
    "hive.vectorized.execution.enabled": "true"
  }
}]
EOF

  lifecycle {
    create_before_destroy = "true"
  }

  tags = "${var.tags}"
}
