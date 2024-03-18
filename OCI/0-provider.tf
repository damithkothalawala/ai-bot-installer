provider "oci" {
  region = "ap-mumbai-1"  # Use the appropriate OCI region
}

terraform {
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = "~> 4.0"  # Use the desired OCI Terraform provider version
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}