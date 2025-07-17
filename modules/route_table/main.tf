resource "aws_route_table" "pub-rt" {
  vpc_id = var.my_vpc_id
  tags = {
    "Name" = var.pubrt
  }
}

resource "aws_route_table" "pri-rt" {
  vpc_id = var.my_vpc_id
  tags = {
    "Name" = var.prirt
  }
}
resource "aws_route" "public-internetgateway" {
  route_table_id = var.ig_rt_id
  destination_cidr_block = var.ig_dest_cidr
  gateway_id = var.ig_id
}
resource "aws_route" "private-natgateway" {
  route_table_id = var.nt_rt_id
  destination_cidr_block = var.nt_dest_cidr
  gateway_id = var.nt_id
}
