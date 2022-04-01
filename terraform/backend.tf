terraform {
  backend "gcs" {
    bucket = "nikhil-tf"
    prefix = "terraform/state"
  }
}