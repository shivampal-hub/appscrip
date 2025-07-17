resource "aws_eks_cluster" "kube_cluster" {
    name = var.cluster_name
    version = var.eks_version
    role_arn = var.role_arn
    vpc_config {
      subnet_ids = var.subnet_ids
    }
    tags = var.tags
}