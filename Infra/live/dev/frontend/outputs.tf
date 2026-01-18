output "website_domain_name" {
	description = "Website domain name (S3 website endpoint)"
	value       = module.frontend_s3_static_site.website_domain_name
}

output "website_hosted_zone_id" {
	description = "Hosted zone id for the S3 website endpoint"
	value       = module.frontend_s3_static_site.website_hosted_zone_id
}
