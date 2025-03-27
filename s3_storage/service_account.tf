
resource "yandex_iam_service_account" "service_account_s3" {
  name        = var.service_account_s3.name
  description = "Сервисная УЗ для S3 бакета"
  folder_id   = var.service_account_s3.folder_id
}

resource "yandex_resourcemanager_folder_iam_member" "service_account_editor" {
  folder_id = var.cloud.folder_id
  role      = "storage.admin"
  member    = "serviceAccount:${yandex_iam_service_account.service_account_s3.id}"
}

resource "yandex_iam_service_account_static_access_key" "service_account_key" {
  service_account_id = yandex_iam_service_account.service_account_s3.id
  description        = "static access key for object storage"
}

