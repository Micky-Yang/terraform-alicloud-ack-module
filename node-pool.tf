resource "alicloud_cs_kubernetes_node_pool" "default_node_pool" {
  cluster_id           = alicloud_cs_managed_kubernetes.my_ack.id
  instance_types       = var.node_pool_instance_type
  name                 = var.node_pool_name
  vswitch_ids          = [alicloud_vswitch.ack_vswitch.id]
  image_type           = var.node_pool_image_type
  runtime_name         = var.node_pool_runtime_name
  runtime_version      = var.node_pool_runtime_version
  system_disk_category = var.node_pool_system_disk_category
  system_disk_size     = var.node_pool_system_disk_size
  desired_size         = var.node_pool_desired_size
  spot_strategy        = var.node_pool_spot_strategy
  password             = random_password.ecs_password.result
  spot_price_limit {
    instance_type = var.node_pool_instance_type[0]
    price_limit   = var.node_pool_spot_price_limit
  }
}

resource "random_password" "ecs_password" {
  length  = 16
  special = true
}