resource "aws_iam_role_policy_attachment" "eks_cluster_policy" {
    role = var.role_name
    policy_arn = var.policy_arn
  
}