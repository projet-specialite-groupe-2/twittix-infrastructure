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

  min_instances = 2
  max_instances = 5

  depends_on = [google_compute_network.main, google_compute_subnetwork.main_subnet]

}

resource "google_project_service" "servicenetworking_api" {
  project = var.project_id
  service = "servicenetworking.googleapis.com"
  disable_on_destroy = false # Set to false to prevent accidental API deactivation
}

resource "google_compute_address" "private_service_access_ip_range" {
  name          = "${var.vpc_name}-private-service-access-range"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 20 # A /20 is a common and usually sufficient size (4096 IPs)
  network       = google_compute_network.main.self_link # Reference the self-link of your VPC network
  region        = var.region # Must be in the same region as your services
  project       = var.project_id
  # Explicitly depend on the API being enabled
  depends_on    = [google_project_service.servicenetworking_api]
}

resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = google_compute_network.main.self_link # Reference the self-link of your VPC network
  service                 = "servicenetworking.googleapis.com"
  # Reference the name of the allocated IP range
  reserved_peering_ranges = [google_compute_address.private_service_access_ip_range.name]
  # Explicitly depend on the IP range being allocated
  depends_on              = [google_compute_address.private_service_access_ip_range]
}
