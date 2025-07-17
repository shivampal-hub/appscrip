output "node_group_policies" {
  value = {
    for k, v in aws_iam_role_policy_attachment.node_group_policies :
    k => v.id
  }
}