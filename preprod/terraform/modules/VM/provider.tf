terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc8"
    }
  }
}

provider "proxmox" {
    pm_api_url          = "https://164.132.201.210:8006/api2/json/"
    pm_api_token_id     = "terraform@pve!terraform-1"
    pm_api_token_secret = "REDACTED"
    pm_tls_insecure     = true
}