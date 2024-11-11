provider "aws" {
  region = var.region
}

# Call to Networking Module
module "networking" {
  source = "./modules/networking"
  vpc_cidr_block = var.vpc_cidr_block
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
}

# Call to Compute Module (EKS, EC2)
module "compute" {
  source = "./modules/compute"
  vpc_id          = module.networking.vpc_id
  private_subnets = module.networking.private_subnets
}

# Call to Security Module (IAM, Security Groups, WAF)
module "security" {
  source        = "./modules/security"
  vpc_id        = module.networking.vpc_id
  public_subnets = module.networking.public_subnets
}

# Call to Storage Module (S3, RDS)
module "storage" {
  source = "./modules/storage"
  vpc_id = module.networking.vpc_id
  private_subnets = module.networking.private_subnets
}

# Call to Monitoring Module (Prometheus, Grafana)
module "monitoring" {
  source = "./modules/monitoring"
}

