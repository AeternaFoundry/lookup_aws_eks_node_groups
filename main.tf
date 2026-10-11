data "aws_eks_node_groups" "eks_node_groups_lookup" {
  for_each = var.eks_node_groups_lookup

  cluster_name = each.value.cluster_name
  region       = each.value.region
}

