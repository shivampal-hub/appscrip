variable "pub_cidr" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "pri_cidr" {
  type = list(string)
  default = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "my_vpc_id" {
  type = string
  default = ""
}
variable "availability_zones" {
  type = list(string)
  default = [ "" ]
  
}