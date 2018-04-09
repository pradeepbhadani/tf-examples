output "emr-id" {
  value = "${aws_emr_cluster.tf-example-3.id}"
}

output "emr-master-dns" {
  value = "${aws_emr_cluster.tf-example-3.master_public_dns}"
}
