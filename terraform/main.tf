resource "google_compute_instance" "this" {
  name         = "webserver"
  machine_type = "e2-small"
  zone         = "us-central1-c"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
  }
}
