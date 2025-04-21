variable "cloud" {
  type = object({
    folder_id    = string
    default_zone = string
    cloud_id     = string

  })
}

variable "service_account_s3" {
  type = object({
    name      = string
    folder_id = string
  })
  default = {
    name      = "service-account-s3"
    folder_id = ""
  }
}