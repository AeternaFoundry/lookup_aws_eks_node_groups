output "eks_node_groups_lookup_id" {
  description = "Map of id values across all eks_node_groups_lookup, keyed the same as var.eks_node_groups_lookup"
  value       = { for k, v in data.aws_eks_node_groups.eks_node_groups_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eks_node_groups_lookup_cluster_name" {
  description = "Map of cluster_name values across all eks_node_groups_lookup, keyed the same as var.eks_node_groups_lookup"
  value       = { for k, v in data.aws_eks_node_groups.eks_node_groups_lookup : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "eks_node_groups_lookup_names" {
  description = "Map of names values across all eks_node_groups_lookup, keyed the same as var.eks_node_groups_lookup"
  value       = { for k, v in data.aws_eks_node_groups.eks_node_groups_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "eks_node_groups_lookup_region" {
  description = "Map of region values across all eks_node_groups_lookup, keyed the same as var.eks_node_groups_lookup"
  value       = { for k, v in data.aws_eks_node_groups.eks_node_groups_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

