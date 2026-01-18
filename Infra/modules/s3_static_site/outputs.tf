output "website_domain_name" {
  description = "The S3 website endpoint (domain)"
  value       = aws_s3_bucket_website_configuration.this.website_endpoint
}

output "website_hosted_zone_id" {
  description = "Hosted zone ID for the S3 website endpoint in the bucket's region (use for Route53 alias)"
  value       = local.s3_website_zone_id
}
