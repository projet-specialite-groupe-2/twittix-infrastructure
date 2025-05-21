module "vpc" {
  source             = "./modules/vpc"
  project_id         = var.project_id
  region             = var.region

  vpc_name           = "twittix-vpc"
  subnet_cidr        = "10.10.0.0/16"

  connector_name     = "vpc-connector-twittix"
  connector_region   = var.region
  connector_vpc_name = "twittix-vpc"
  ip_cidr_range      = "10.8.0.0/28"
}