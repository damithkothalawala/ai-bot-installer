/* resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public"
  }
}

resource "aws_route_table_association" "private_ap_south_1a" {
  subnet_id      = aws_subnet.private_ap_south_1a.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private_ap_south_1b" {
  subnet_id      = aws_subnet.private_ap_south_1b.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "public_ap_south_1a" {
  subnet_id      = aws_subnet.public_ap_south_1a.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_ap_south_1b" {
  subnet_id      = aws_subnet.public_ap_south_1b.id
  route_table_id = aws_route_table.public.id
}
 */


#Associate subnets with the default route table (no explicit route table resource needed)
resource "oci_core_subnet_route_table_association" "private_ap_south_1a_association" {
  subnet_id      = oci_core_subnet.private_ap_south_1a.id
  route_table_id = oci_core_virtual_network.main.default_route_table_id
}

resource "oci_core_subnet_route_table_association" "private_ap_south_1b_association" {
  subnet_id      = oci_core_subnet.private_ap_south_1b.id
  route_table_id = oci_core_virtual_network.main.default_route_table_id
}

resource "oci_core_subnet_route_table_association" "public_ap_south_1a_association" {
  subnet_id      = oci_core_subnet.public_ap_south_1a.id
  route_table_id = oci_core_virtual_network.main.default_route_table_id
}

resource "oci_core_subnet_route_table_association" "public_ap_south_1b_association" {
  subnet_id      = oci_core_subnet.public_ap_south_1b.id
  route_table_id = oci_core_virtual_network.main.default_route_table_id
}
