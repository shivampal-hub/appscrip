output "eks_cluster_policy" {
  value = aws_iam_role_policy_attachment.eks_cluster_policy.id
}