locals {
  availability_domain = data.oci_identity_availability_domains.availability_domains.availability_domains[0]
  availability_domain_name = data.oci_identity_availability_domains.availability_domains.availability_domains[0].name

  fault_domain_one = length(data.oci_identity_fault_domains.fault_domains)> 0 ? data.oci_identity_fault_domains.fault_domains.fault_domains[0] : null
  fault_domain_two = length(data.oci_identity_fault_domains.fault_domains)> 0 ? data.oci_identity_fault_domains.fault_domains.fault_domains[1] : null
}