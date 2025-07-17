resource "aws_eks_node_group" "group1" {
    cluster_name = var.cluster_name
    version = var.eks_version
    node_group_name = "${var.cluster_name}-node-group"
    node_role_arn = var.node_role_arn
    subnet_ids = var.subnet_ids
    instance_types = var.instance_types
    remote_access {
        ec2_ssh_key = var.ssh_key_name
    }

    scaling_config {
        desired_size = var.desired_size 
        max_size = var.max_size
        min_size = var.min_size
    }

    tags = var.tags

  
}