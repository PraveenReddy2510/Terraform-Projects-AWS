variable "vpc_id" {
  description = "VPC ID where EKS will be deployed"
  type        = string
}

variable "private_subnets" {
  description = "Private subnets for EKS worker nodes"
  type        = list(string)
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.21"
}

variable "desired_capacity" {
  description = "Desired capacity for the EKS node group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum size of the EKS node group"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "Minimum size of the EKS node group"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "Instance type for EKS worker nodes"
  type        = string
  default     = "t3.medium"
}

variable "key_name" {
  description = "Name of the SSH key pair for access to EKS worker nodes"
  type        = string
  default     = ""  # Leave empty if SSH access is not required
}

variable "environment" {
  description = "Environment tag for the EKS cluster"
  type        = string
  default     = "dev"
}
