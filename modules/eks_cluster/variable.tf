variable "cluster_name" {
  type = string
  default = ""
}

variable "eks_version" {
  type = string
  default = ""
}
variable "role_arn" {
  type = string
  default = ""
}
variable "subnet_ids" {
  type = list(string)
  default = [ "" ]
}
variable "tags" {
  
}
