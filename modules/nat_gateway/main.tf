resource "aws_eip" "nat_eip" {
    depends_on = [var.ig_id]
}

resource "aws_nat_gateway" "nat" {
  allocation_id = var.eip_id
  subnet_id = var.pub_sub_id
  tags = {
    "Name" = var.nat_tag
  }
}