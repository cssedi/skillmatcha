module "frontend_s3_static_site" {
  source         = "../../../modules/s3_static_site"
  s3_bucket_name = var.s3_bucket_name
  tags = {
    Environment = var.env
    Service     = "frontend"
  }
}

