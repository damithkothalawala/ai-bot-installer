/* resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "nat"
  }
}
 */

 resource "oci_core_public_ip" "nat" {
  lifetime = "RESERVED"
  compartment_id = var.compartment_id  # Specify the compartment ID where you want to create the EIP

  freeform_tags = {
    "Name" = "nat"
  }
}


/* resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_ap_south_1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.igw]
}
 */

 resource "oci_core_nat_gateway" "nat" {
  compartment_id = var.compartment_id  # Specify the compartment ID where you want to create the NAT Gateway
  vcn_id = oci_core_virtual_network.main.id  # Use the OCI VCN ID where you want to create the subnet
  #subnet_id      = oci_core_subnet.public_ap_south_1a.id  # Use the OCI subnet ID where NAT Gateway will be deployed
  block_traffic  = false  # Allow traffic through NAT Gateway
  public_ip_id = oci_core_public_ip.nat.id
  
  freeform_tags = {
    "Name" = "nat"
  }
}
