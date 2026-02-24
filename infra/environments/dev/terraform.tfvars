# --- Project & Network ---
project_name = "dev-vpc"
vpc_cidr     = "10.0.0.0/16"

public_subnets = {
  a = { cidr = "10.0.1.0/24", az = "us-east-1a" }
  b = { cidr = "10.0.2.0/24", az = "us-east-1b" }
}

private_subnets = {
  a = { cidr = "10.0.3.0/24", az = "us-east-1a" }
  b = { cidr = "10.0.4.0/24", az = "us-east-1b" }
}

# --- Bastion Host ---
bastion_ami_id   = "ami-0360c520857e3138f"
bastion_key_name = "ostadkey"

# --- EKS Cluster Settings ---
cluster_name     = "dev-eks-cluster"
cluster_version  = "1.31"

# --- IAM Roles ---
controller_iam_role_name = "dev-eks-controller-role"
worker_iam_role_name     = "dev-eks-worker-role"

# --- Node Group Settings ---
node_group_name         = "dev-worker-node-group"
node_group_desired_size = 2
node_group_min_size     = 1
node_group_max_size     = 3