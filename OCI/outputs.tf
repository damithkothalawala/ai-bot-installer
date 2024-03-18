output "availability_domain" {
  value = local.availability_domain_name
}

output "fault_domain_one" {
  value = local.fault_domain_one.name
}

output "fault_domain_two" {
  value = local.fault_domain_two.name
}