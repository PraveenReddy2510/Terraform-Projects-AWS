# Define the EKS cluster
module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "18.0.0"  # Specify the version for consistency
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnet_ids      = var.private_subnets
  manage_aws_auth = true
  
  # Node group configuration
  node_groups = {
    eks_nodes = {
      desired_capacity = var.desired_capacity
      max_size         = var.max_size
      min_size         = var.min_size
      instance_type    = var.instance_type
      key_name         = var.key_name  # If you have an SSH key to access worker nodes
    }
  }

  # Enable logging for the EKS cluster (optional)
  enable_irsa            = true
  cluster_log_types      = ["api", "audit", "authenticator"]
  
  tags = {
    Environment = var.environment
    Project     = "EKS-Compute"
  }
}
