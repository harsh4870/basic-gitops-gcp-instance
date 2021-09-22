
data "google_compute_image" "debian_image" {
  family  = "debian-9"
  project = "debian-cloud"
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_size
  tags = ["http-server", "https-server"]
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian_image.self_link
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

#   provisioner "remote-exec" {
#     script = var.script_path

#     connection {
#       type        = "ssh"
#       host        = google_compute_address.static.address
#       user        = var.username
#       private_key = file(var.private_key_path)
#     }
#  }
}


