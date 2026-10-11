variable "eks_node_groups_lookup" {
  description = <<EOT
Map of eks_node_groups_lookup, attributes below
Required:
    - cluster_name
Optional:
    - region
EOT

  type = map(object({
    cluster_name = string
    region       = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

