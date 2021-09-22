provider "google" {
  credentials = "${file("./creds/serviceaccount.json")}"
  project     = "auto-x-244507"
  region      = "us-central1"
}
