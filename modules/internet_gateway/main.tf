resource "aws_internet_gateway" "ig1" {
  vpc_id = var.my_vpc_id
  tags = {
    "Name" = var.ig_name
  }
}