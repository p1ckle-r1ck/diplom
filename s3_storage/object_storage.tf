resource "yandex_storage_bucket" "object_storage" {
  bucket     = "marsel.valiev"
  access_key = yandex_iam_service_account_static_access_key.service_account_key.access_key
  secret_key = yandex_iam_service_account_static_access_key.service_account_key.secret_key
}
