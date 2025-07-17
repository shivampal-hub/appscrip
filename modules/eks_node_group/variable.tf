variable "cluster_name" {
    type = string
    default = ""
  
}
variable "node_role_arn" {
    type = string
    default = ""
  
}
variable "subnet_ids" {
  type = list(string)
  default = [""]
}

variable "instance_types" {
  type = list(string)
  default = [""]
}

variable "desired_size" {
  type = string
  default = ""
}

variable "max_size" {
  type = string
  default = ""
}

variable "min_size" {
  type = string
  default = ""
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply"
}
variable "ssh_key_name" {
  type = string
  default = ""
}
variable "eks_version" {
  type = string
  default = ""
}