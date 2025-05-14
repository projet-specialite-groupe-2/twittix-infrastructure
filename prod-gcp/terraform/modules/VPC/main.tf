resource "google_compute_network" "main" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "main_subnet" {
  name          = "${var.vpc_name}-subnet"
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.main.id
  private_ip_google_access = true
}
resource "google_vpc_access_connector" "connector" {
  name          = var.connector_name
  region        = var.connector_region
  network       = var.connector_vpc_name
  ip_cidr_range = var.ip_cidr_range

  depends_on = [google_compute_network.main, google_compute_subnetwork.main_subnet]

}
