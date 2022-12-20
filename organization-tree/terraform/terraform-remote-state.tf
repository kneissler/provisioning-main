terraform {
  backend "gcs" {
    bucket  = "kneissler-terraform-state-europe"
    prefix  = "terraform/state"
  }
}