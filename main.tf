terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.28.0"
    }
  }
}

provider "google" {
  project = "ancient-chiller-433403-k9"
}

resource "google_storage_bucket" "my_bucket" {
  project       = "ancient-chiller-433403-k9"
  name          = "19031982-my_bucket"
  location      = "us-central1"
  force_destroy = true

  # REQUIRED for provider v7.x to avoid the "false is not a valid value" error
  uniform_bucket_level_access = true
}
