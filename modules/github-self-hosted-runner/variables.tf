variable "ami_id" {
  description = "The AMI ID for the Terraform node"
  type        = string
  default     = "ami-0d1b5a8c13042c939" #"ami-03c983f9003cb9cd1"         # Default AMI for us-east-2, update as needed
}

variable "instance_type" {
  description = "The instance type for the Terraform node"
  type        = string
  default     = "t2.medium"
}

variable "key_name" {
  description = "The key name for the Jenkins server"
  type        = string
  default     = "DevOps_Train2024"
}

variable "main-region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-2"
}

variable "security_group_id" {
  description = "The security group ID to attach to the instance"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID where the instance will be deployed"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-2"
}


