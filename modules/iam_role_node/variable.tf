variable "role_name" {
  type = string
  default = ""
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply"
}
variable "cluster_name" {
  type = string
  default = ""
  
}