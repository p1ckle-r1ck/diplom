terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  backend "s3" {
    endpoints = {
      s3 = "http://storage.yandexcloud.net"
    }
    bucket = "marsel.valiev"
    region = "ru-central1-a"
    key    = "infrastructure.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true 
    skip_s3_checksum            = true 


  }
}

provider "yandex" {
  folder_id                = var.cloud.folder_id
  zone                     = var.cloud.default_zone
  service_account_key_file = file("key.json")
  cloud_id                 = var.cloud.cloud_id
}