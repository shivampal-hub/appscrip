output "cluster_name" {
  value = aws_eks_cluster.kube_cluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.kube_cluster.endpoint
}