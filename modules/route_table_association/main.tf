resource "aws_route_table_association" "public-subnet-association" {
    count = length(var.pub_cidr)
    subnet_id = var.pub_subnet_id[count.index]
    route_table_id = var.pub_routetable_id
}

resource "aws_route_table_association" "private-subnet-association" {
    count = length(var.pri_cidr)
    subnet_id = var.pri_subnet_id[count.index]
    route_table_id = var.pri_routetable_id
}
