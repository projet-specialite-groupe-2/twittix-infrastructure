terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc8"
    }
  }
}

provider "proxmox" {
  pm_api_url          = "https://localhost:8006/api2/json/" //for test purpose only
  //pm_api_url          = "https://164.132.201.210:8006/api2/json/"
  pm_api_token_id     = "terraform@pve!terraform-1"
  pm_api_token_secret = "e12415e0-3ac5-49db-9e79-88129846a9ba"
  pm_tls_insecure     = true
}