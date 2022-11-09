resource "google_secret_manager_secret_version" "version" {
  secret = "projects/breuni-infra-gitbeaver/secrets/gitbeaver-masterkey"
  secret_data = "not-set"
}
