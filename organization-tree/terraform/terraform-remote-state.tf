terraform {
  backend "gcs" {
    bucket  = "gitbeaver-terraform-state"
    prefix  = "terraform/state"
  }
}