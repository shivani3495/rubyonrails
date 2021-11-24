variable "project_name" {
  description = "Project Name - will prefex all generated AWS resource names"
  default     = "devops-sg"
}




variable "region" {
  default = "ap-south-1"
}

data "aws_availability_zones" "azs" {
}


variable "key_name" {}
variable "AmazonEC2FullAccess_arn" {}
variable "AmazonS3FullAccess_arn" {}
variable "AWSCodedeploy_arn" {}
#variable "AmazonS3ReadOnlyAccess_arn" {}
#variable "sydney_master_key_arn" {}
#variable "ubuntu_18_sg" {}
