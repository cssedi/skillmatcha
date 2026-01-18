terraform {
  backend "s3" {
    bucket         = "skillmatcha-terraform-state"
    key            = "live/dev/shared-networking.tfstate"
    region         = var.aws_region
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
