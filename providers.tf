provider "google" {
  credentials = "${file("default-service.json")}"
  project     = "${var.gcloud-project}"
  region      = "${var.gcloud-region}"
}
