terraform {
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = "1.203.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}