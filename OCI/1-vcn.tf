resource "oci_core_virtual_network" "main" {
  cidr_block = var.cidr_block
  compartment_id = var.compartment_id  # Specify the compartment ID where you want to create the VCN

  display_name = "sbai"

  # Optionally, you can add more properties such as DNS label and DNS resolution
  # dns_label = "myvcn"
  # dns_resolution = "VcnLocalPlusInternet"
  freeform_tags = {
    "Name" = "sbai"
  }
}
