resource "oci_core_subnet" "private_ap_south_1a" {
  cidr_block         = var.private_subnet_cidr_block
  vcn_id             = oci_core_virtual_network.main.id  # Use the OCI VCN ID where you want to create the subnet
  availability_domain = local.availability_domain_name # Specify the correct availability domain for ap-south-1a
  compartment_id = var.compartment_id
  display_name       = "private-${var.region}"

  freeform_tags = {
   # "kubernetes.io/role/internal-elb" = "1"
   # "kubernetes.io/cluster/sbai"      = "owned"
    "Name" = "private-${var.region}"
  }
}
/* 
resource "oci_core_subnet" "private_ap_south_1b" {
  cidr_block         = "10.0.32.0/19"
  vcn_id             = oci_core_virtual_network.main.id  # Use the OCI VCN ID where you want to create the subnet
  availability_domain = "CKGn:AP-SOUTH-1-AD-2"  # Specify the correct availability domain for ap-south-1b

  display_name       = "private-south-1b"

  defined_tags = {
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/sbai"      = "owned"
  }

  freeform_tags = {
    "Name" = "private-south-1b"
  }
}

resource "oci_core_subnet" "public_ap_south_1a" {
  cidr_block                = "10.0.64.0/19"
  vcn_id                    = oci_core_virtual_network.main.id  # Use the OCI VCN ID where you want to create the subnet
  availability_domain       = "CKGm:AP-SOUTH-1-AD-1"  # Specify the correct availability domain for ap-south-1a
  prohibit_public_ip_on_vnic = false  # Allow public IPs on the VNIC

  display_name              = "public-south-1a"

  defined_tags = {
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/sbai" = "owned"
  }

  freeform_tags = {
    "Name" = "public-south-1a"
  }
}

resource "oci_core_subnet" "public_ap_south_1b" {
  cidr_block                = "10.0.96.0/19"
  vcn_id                    = oci_core_virtual_network.main.id  # Use the OCI VCN ID where you want to create the subnet
  availability_domain       = "CKGn:AP-SOUTH-1-AD-2"  # Specify the correct availability domain for ap-south-1b
  prohibit_public_ip_on_vnic = false  # Allow public IPs on the VNIC

  display_name              = "public-south-1b"

  defined_tags = {
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/sbai" = "owned"
  }

  freeform_tags = {
    "Name" = "public-south-1b"
  }
}

 */