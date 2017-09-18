resource "google_container_cluster" "dev" {
  name = "dev"
  network = "${google_compute_network.platform.name}"
  subnetwork = "${google_compute_subnetwork.dev.name}"
  zone = "${var.gcloud-zone}"

  initial_node_count = 1

  master_auth {
    username = "admin"
    password = "password4"
  }

  node_config {
    machine_type = "n1-standard-1"

    oauth_scopes = [
      "https://www.googleapis.com/auth/projecthosting",
      "https://www.googleapis.com/auth/devstorage.full_control",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
