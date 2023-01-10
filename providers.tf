provider "google" {
    project = var.prject_id
    region = var.region  
}

terraform {
  backend "gcs"{
    bucket = "stack-state-gcs-data-pipeline0100"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
        source = "hashcorp/google"
        version = "3.67.0"
    }
  }
}