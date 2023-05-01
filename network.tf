resource "alicloud_vpc" "ack_vpc" {
  vpc_name    = var.vpc_name
  cidr_block  = var.vpc_cidr_block
  description = "The vpc for ACK Cluster"
}

resource "alicloud_vswitch" "ack_vswitch" {
  cidr_block   = var.vswitch_cidr_block
  vswitch_name = var.vswitch_name
  vpc_id       = alicloud_vpc.ack_vpc.id
  description  = "The vswitch for ACK Cluster"
  zone_id      = var.vswitch_zone_id
}