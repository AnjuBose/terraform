provider "aws" {
  region = var.aws_region
}
 
# Example simple VPC + subnet (for demo only; you might use a separate vpc module)
resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "tf-sample-vpc" }
}
 
resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${var.aws_region}a"
  tags = { Name = "tf-sample-subnet" }
}
 
module "web" {
  source        = "../../modules/ec2-instance"
  name          = "web-server"
  ami_id        = var.ami_id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public.id
  vpc_id        = aws_vpc.this.id
  ssh_cidr      = "0.0.0.0/0" # for demo only
}
