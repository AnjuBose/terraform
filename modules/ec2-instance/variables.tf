variable "ami_id" {
  type        = string
  description = "AMI to use for the instance"
}
 
variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "EC2 instance type"
}
 
variable "subnet_id" {
  type        = string
  description = "Subnet id to launch instance in"
}
 
variable "name" {
  type        = string
  default     = "tf-example"
}
 
variable "ssh_cidr" {
  type    = string
  default = "0.0.0.0/0"
  description = "CIDR allowed to access SSH (for demo only; tighten in production)"
}
