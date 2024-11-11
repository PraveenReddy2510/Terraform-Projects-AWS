output "vpc_id" {
  value = module.networking.vpc_id
}

output "eks_cluster_name" {
  value = module.compute.eks_cluster_name
}

output "s3_bucket_name" {
  value = module.storage.s3_bucket_name
}

