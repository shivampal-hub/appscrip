resource "aws_vpc" "appscrib-vpc" {
        cidr_block = var.vpc_cidr
        tags = {
            "Name" = var.vpc_tag
        } 
}