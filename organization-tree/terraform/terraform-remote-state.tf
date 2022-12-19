terraform {
  backend "gcs" {
    bucket  = "kneissler-gitbeaver-terraform-state"
    prefix  = "terraform/state"
  }
}