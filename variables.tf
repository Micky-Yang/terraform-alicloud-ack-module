variable "vpc_name" {
  type        = string
  description = "The VPC name for ACK cluster"
}

variable "vpc_cidr_block" {
  type        = string
  description = "The VPC CIDR block for ACK cluster"
}

variable "vswitch_name" {
  type        = string
  description = "The vswitch name for ACK cluster"
}

variable "vswitch_cidr_block" {
  type        = string
  description = "The vswitch CIDR block for ACK cluster"
}

variable "vswitch_zone_id" {
  type        = string
  description = "The vswitch zone ID"
}

variable "ack_cluster_name" {
  type        = string
  description = "The name for ACK cluster"
}

variable "ack_cluster_version" {
  type        = string
  description = "The version for ACK cluster"
}

variable "ack_cluster_spec" {
  type        = string
  description = "The spec for ACK cluster"
}

variable "ack_cluster_service_cidr" {
  type        = string
  description = "The Kubernetes service kind CIDR"
}

variable "ack_cluster_pod_cidr" {
  type        = string
  description = "The Kubernetes pod kind CIDR"
}

variable "ack_cluster_create_nat_gateway" {
  type        = bool
  description = "Create a new NAT gateway for ACK cluster"
}

variable "ack_cluster_slb_spec" {
  type        = string
  description = "The SLB spec for ACK cluster"
}

variable "ack_cluster_enabled_slb_internet" {
  type        = bool
  description = "Enabled SLB internet access"
}

variable "ack_cluster_kube_proxy_mode" {
  type        = string
  description = "The Kubernetes kub-proxy mode"
}

variable "ack_cluster_addons" {
  type = list(object({
    name   = string
    config = string
  }))
  description = "Install addons services for ACK cluster"
}

variable "node_pool_name" {
  type        = string
  description = "The node pool name"
}

variable "node_pool_instance_type" {
  type        = list(string)
  description = "The node pool instance types"
}
variable "node_pool_image_type" {
  type        = string
  description = "The image type for node pool, example: CentOS, RedHat"
}

variable "node_pool_runtime_name" {
  type        = string
  description = "The container runtime for ACK cluster, example: containerd, docker"
}

variable "node_pool_runtime_version" {
  type        = string
  description = "The container runtime version"
}

variable "node_pool_system_disk_category" {
  type        = string
  description = "The system disk type for Node pool"
}

variable "node_pool_system_disk_size" {
  type        = number
  description = "The system disk size for Node pool"
}

variable "node_pool_desired_size" {
  type        = number
  description = "The desired size for Node pool"
}

variable "node_pool_spot_strategy" {
  type        = string
  description = "The spot strategy for Node pool"
}

variable "node_pool_spot_price_limit" {
  type        = string
  description = "The spot price limit for Node pool"
}

variable "node_pool_password_length" {
  type        = number
  description = "The node password length"
}