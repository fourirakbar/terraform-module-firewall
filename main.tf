resource "google_compute_firewall" "allow" {
  count = var.action == "allow" ? 1 : 0

  name    = var.firewall_name
  network = var.network
  project = var.project

  allow {
    protocol = var.protocol
    ports    = var.ports
  }

  target_tags   = var.network_tags
  source_ranges = var.network_ranges
  priority      = var.priority
  description   = var.description
}

resource "google_compute_firewall" "deny" {
  count = var.action == "deny" ? 1 : 0

  name    = var.firewall_name
  network = var.network
  project = var.project

  deny {
    protocol = var.protocol
    ports    = var.ports
  }

  target_tags   = var.network_tags
  source_ranges = var.network_ranges
  priority      = var.priority
  description   = var.description
}
