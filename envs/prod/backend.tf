terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-exampleanjubose"  # change this
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile   = true                   # for state locking (recommended)
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
