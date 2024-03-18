data "oci_identity_availability_domains" "availability_domains" {
    compartment_id = var.tenancy_id
}

data "oci_identity_fault_domains" "fault_domains" {
    availability_domain = local.availability_domain.name
    compartment_id = var.compartment_id
}