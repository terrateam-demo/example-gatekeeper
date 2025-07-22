terraform {
  backend "gcs" {
    bucket = "terrateam-demo-state"
    prefix = "/tarmac/production/compute/tf.state"
  }
}

module "staging_compute_instance" {
  source = "../../modules/compute"

  instance_count = 0
  instance_name  = "production-instance"
  instance_zone  = "us-central1-a"
  boot_disk_image = "debian-cloud/debian-11"
  network_name    = "default"
  project_id      = "terrateam-sandbox"
  region          = "us-central1"
  provider_zone   = "us-central1-c"
}

resource "null_resource" "foobar" {
  provisioner "local-exec" {
    command = "echo change is to force a terrateam run in this dir"
  }
}

resource "null_resource" "foobar1" {
  provisioner "local-exec" {
    command = "echo this is a null resource"
  }
}
