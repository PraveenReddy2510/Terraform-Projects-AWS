module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "eks-cluster"
  cluster_version = "1.21"
  subnets         = var.private_subnets
  vpc_id          = var.vpc_id
  manage_aws_auth = true
}

