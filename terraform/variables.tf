variable "aws_region" {
  description = "AWS region for infrastructure deployment"
  type        = string
  default     = "eu-north-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance (Ubuntu 24.04 LTS in eu-north-1)"
  type        = string
  default     = "ami-0705384c0b33c194c"
}

variable "instance_type" {
  description = "EC2 instance type (t3.micro is Free Tier eligible in eu-north-1)"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of the existing AWS EC2 Key Pair in eu-north-1"
  type        = string
}