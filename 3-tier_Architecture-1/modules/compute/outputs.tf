output "eks_cluster_name" {
  description = "Name of the EKS cluster"
  value       = module.eks.cluster_name
}

#output "eks_cluster_id" {
#  description = "EKS cluster ID"
#  value       = module.eks.cluster_id
#}

#output "eks_cluster_endpoint" {
#  description = "EKS cluster endpoint"
#  value       = module.eks.cluster_endpoint
#}

#output "eks_node_group_role_arn" {
#  description = "IAM role ARN for EKS worker nodes"
#  value       = module.eks.node_groups["eks_nodes"].iam_role_arn
# }
