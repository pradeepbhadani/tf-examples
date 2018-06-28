# tf-examples

## Terraform Installation
1. Download Terraform from terroform.io

    For Mac,
      ```
      wget https://releases.hashicorp.com/terraform/0.11.5/terraform_0.11.5_darwin_amd64.zip -O /tmp/terraform.zip
      ```

      For Linux,
      ```
      wget https://releases.hashicorp.com/terraform/0.11.5/terraform_0.11.5_linux_amd64.zip -O /tmp/terraform.zip
      ```

2. Extract to a directory
    ```
    mkdir -p mkdir -p ${HOME}/terraform
    unzip /tmp/terraform.zip -d ${HOME}/terraform/
    ```

3. Set Classpath
    ```
    echo 'export PATH=${HOME}/terraform:${PATH}' >> ~/.bashrc
    source ~/.bashrc
    ```


## Configure AWS
Make sure to configure AWS credentials so that terraform can create/manage AWS resources.


Create/Open `~/.aws/credentials` file and make sure it has access key and secret access key
```
[env1]
region = us-west-2
output = json
aws_access_key_id = <YOUR AWS ACCESS KEY ID>
aws_secret_access_key = <YOUR AWS SECRET ACCESS KEY ID>
```

## Run Terraform

1. Navigate to example directory (let's say `ex1/`)
2. Put one `tfvars` file under `env` directory for each environment. (Refer `example.tfvars` file)
2. Run `terraform init` to initialize terraform
3. Run `terraform plan -var-file=env/env1.tfvars` to see the plan (Let's say `env1.tfvars` is for `env1` environment)
4. If happy with the plan, run `terraform apply -var-file=env/env1.tfvars`
5. If want to **cleanup**(or **destroy** all resources created by this example terraform code), run `terraform destroy -var-file=env/env1.tfvars`

## List of Examples
This repo has collection of example

|Example|Description|
|-|-|
| ex1 | Simple example to create an EC2 instance |
| ex2 | Use of Variables and Outputs |
| ex3 | EMR Cluster and use of data sources |
| ex4 | Remote Backend |
| ex5 | Using Module |
