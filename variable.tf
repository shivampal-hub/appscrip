variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}
variable "vpc_tag" {
  type = string
  default = "appscrip_vpc"
}
variable "pub_cidr" {
  type = list(string)
  default = [ "10.0.1.0/24","10.0.2.0/24" ]
}
variable "pri_cidr" {
  type = list(string)
  default = [ "10.0.6.0/24","10.0.7.0/24" ]
}
variable "availability_zones" {
  type = list(string)
  default = [ "us-east-1a", "us-east-1b" ]
}
variable "ig_name" {
  type = string
  default = "appscrib-internet-gateway"
}
variable "nat_tag" {
  type = string
  default = "appscrip-nat"
}
variable "pubrt" {
    type = string
    default = "kube-pub-01"
  
}
variable "prirt" {
    type = string
    default = "kube-pri-01"
  
}
variable "dest_cidr" {
    type = string
    default = "0.0.0.0/0"
  
}

variable "role_name" {
  type = string
  default = "eks"
}
variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "eks"
  }
}
variable "policy_arn" {
  type = string
  default = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}
variable "cluster_name" {
  type = string
  default = "eks-cluster-1"
}
variable "eks_version" {
  type = string
  default = "1.29"
}
variable "subnet_ids" {
  type = list(string)
  default = [ "" ]
}

variable "instance_types" {
  type = list(string)
  default = ["t3.medium"]
}

variable "desired_size" {
  type = string
  default = "2"
}

variable "max_size" {
  type = string
  default = "3"
}

variable "min_size" {
  type = string
  default = "1"
}

variable "key_name" {
  type = string
  default = "shivam-kube-key"
}

variable "public_key_path" {
  type = string
  default = "~/.ssh/id_rsa.pub"
  
}

variable "region" {
  type = string
  default = "us-east-1"
  
}