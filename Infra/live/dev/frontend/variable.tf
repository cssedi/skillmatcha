variable "s3_bucket_name" {
  type        = string
  description = "Name of the S3 bucket for the frontend site"
}

variable "aws_region" {
  type =  string
  description = "The AWS region to deploy resources into"
}

variable "env" {
  type    = string
  description = "Environment name"
  default = "dev"
}