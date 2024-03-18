resource "oci_core_internet_gateway" "igw" {
  vcn_id = oci_core_virtual_network.main.id  # Use the OCI VCN ID where you want to attach the Internet Gateway
  compartment_id = var.compartment_id
  display_name = "igw"

  # Optionally, you can add more properties such as freeform_tags
  # freeform_tags = {
  #   Environment = "Production"
  # }
  freeform_tags = {
    "Name" = "igw"
  }
}
