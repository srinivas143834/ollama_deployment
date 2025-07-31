variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI ID"
  default     = "ami-0c02fb55956c7d316"
}

variable "key_name" {
  description = "EC2 key pair name"
  default     = "your-keypair-name"
}