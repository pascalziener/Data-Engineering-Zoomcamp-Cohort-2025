terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.16.0"
    }
  }
}

provider "google" {
  project = "custom-blade-448320-j1"
  region  = "europe-west4l"
}

resource "google_storage_bucket" "tf-demo-bucket" {
  name          = "custom-blade-448320-j1-tf-demo-bucket"
  location      = "EU"
  force_destroy = true
}