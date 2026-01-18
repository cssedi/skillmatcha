terraform {
  backend "s3" {
    bucket       = "skillmatcha-terraform-state"
    key          = "live/dev/shared-networking.tfstate"
    region       = "eu-central-1"
    use_lockfile = "terraform-state-locks"
    encrypt      = true
  }
}
