variable "domain_name" {
  description = "The domain name to create a hosted zone for (e.g. example.com)"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy resources into"
  type        = string
  default     = "eu-central-1"
}
