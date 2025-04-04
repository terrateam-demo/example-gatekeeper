resource "google_compute_instance" "this" {
  count        = var.instance_count
  name         = var.instance_name
  machine_type = "e2-small"
  zone         = var.instance_zone
  boot_disk {
    initialize_params {
      image = var.boot_disk_image
    }
  }
  network_interface {
    network = var.network_name
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.provider_zone
}

variable "instance_count" {
  type    = number
  default = 0
}

variable "instance_name" {
  type    = string
  default = ""
}

variable "instance_zone" {
  type    = string
  default = "us-central1-a"
}

variable "boot_disk_image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "network_name" {
  type    = string
  default = "default"
}

variable "project_id" {
  type    = string
  default = "terrateam-sandbox"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "provider_zone" {
  type    = string
  default = "us-central1-c"
}

# Trigger the automatic module discovery
