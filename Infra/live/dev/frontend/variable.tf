variable "s3_bucket_name" {
  description = "name of the bucket which will host the website"
  type        = string
}

variable "env" {
  type    = string
  default = "dev"
}