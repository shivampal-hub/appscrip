resource "aws_subnet" "public" {
    count = length(var.pub_cidr)
    vpc_id = var.my_vpc_id
    cidr_block = var.pub_cidr[count.index]
    availability_zone = var.availability_zones[count.index]
    map_public_ip_on_launch = true
    tags = {
      "Name" = "appscrip-pub-0${count.index + 1}"
    }

}
resource "aws_subnet" "private" {
    count = length(var.pri_cidr)
    vpc_id = var.my_vpc_id
    cidr_block = var.pri_cidr[count.index]
    availability_zone = var.availability_zones[count.index]
    tags = {
      "Name" = "appscrip-pri-0${count.index + 1}"
    }

}