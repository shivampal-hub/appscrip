output "kubeconfig_command" {
  value = "aws eks update-kubeconfig --region ${var.region} --name ${module.eks_cluster.cluster_name}"
  description = "Run this command to configure kubectl to access the EKS cluster"
}