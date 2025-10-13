# Terraform Sample Project
 
- Example of modular Terraform for AWS: VPC + Subnet + EC2 instance
- How to use:
  - `cd envs/prod`
  - `terraform init`
  - `terraform plan -var="aws_region=ap-south-1"`
  - `terraform apply -var="aws_region=ap-south-1"`
Module: modules/ec2-instance
This module provisions an EC2 instance and a security group.
I have changed something
