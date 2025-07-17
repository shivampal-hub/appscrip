variable "pub_cidr" {
  type = list(string)
  default = ["10.0.1.0/24","10.0.2.0/24"] 
}
variable "pub_subnet_id" {
  type = list(string)
}
variable "pub_routetable_id" {
  type = string
  default = ""
}

variable "pri_cidr" {
  type = list(string)
  default = ["10.0.6.0/24","10.0.7.0/24"] 
}
variable "pri_subnet_id" {
  type = list(string)
}
variable "pri_routetable_id" {
  type = string
  default = ""
}
