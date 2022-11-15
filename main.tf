provider "google" {

  project = var.project_id
  region  = var.region
  zone    = var.zone
  version = "~> 3.86.0"
}


module "firestore" {
  source = "../../"

  project_id = var.project_id
  region     = var.region
  zone       = var.zone
  name_suffix = var.name_suffix
  service_accounts = var.service_accounts
}