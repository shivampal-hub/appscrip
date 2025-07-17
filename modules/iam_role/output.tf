output "role_name1" {
  value = aws_iam_role.eks_cluster_role.name
}
output "role_arn" {
  value = aws_iam_role.eks_cluster_role.arn
}
