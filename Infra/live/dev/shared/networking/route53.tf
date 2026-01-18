resource "aws_route53_zone" "primary" {
  name    = var.domain_name
  comment = "Hosted zone for ${var.domain_name} (managed by Terraform)"

  tags = {
    Environment = "dev"
    Service     = "networking"
  }
}

# Read frontend root state to get website endpoint + hosted zone id
data "terraform_remote_state" "frontend" {
  backend = "local"

  config = {
    path = "../../frontend/terraform.tfstate"
  }
}

resource "aws_route53_record" "frontend_alias" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = data.terraform_remote_state.frontend.outputs.website_domain_name
    zone_id                = data.terraform_remote_state.frontend.outputs.website_hosted_zone_id
    evaluate_target_health = false
  }
}

output "route53_zone_id" {
  description = "The ID of the created Route53 hosted zone"
  value       = aws_route53_zone.primary.zone_id
}

output "route53_name_servers" {
  description = "Name servers assigned to the hosted zone (set these at your registrar)"
  value       = aws_route53_zone.primary.name_servers
}
