profile = "env1"
subnet-id = "subnet-12345"

tags = {
  Name               = "Test EMR"
  Team               = "Team Name"
  DepartmentNumber   = "12345"
  Environment        = "env1"
}

emr-logs-location = "emr-logs-bucket-env1"
emr-master-sg = "sg-12345"
emr-slave-sg = "sg-98765"
emr-additional-master-sg = "sg-45678"
emr-additional-slave-sg = "sg-45678"
emr-service-sg = "sg-67890"
