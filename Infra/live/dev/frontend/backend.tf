terraform {
  backend "s3" {
    bucket         = "skillmatcha-terraform-state"
    key            = "live/dev/shared-networking.tfstate"
    region         = "af-south-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
