resource "google_service_account" "default" {
  account_id   = "nikhil-tf"
  display_name = "Nikhil-Rawal"
}

resource "google_container_cluster" "primary" {
  name               = "nikhil-public-cluster"
  location           = "us-central1-c"
  initial_node_count = 3
  node_config {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.default.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    labels = {
      foo = "bar"
    }
    tags = ["foo", "bar"]
  }
  timeouts {
    create = "30m"
    update = "40m"
  }
}