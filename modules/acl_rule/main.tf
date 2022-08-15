resource "aiven_opensearch_acl_rule" "this" {
  count        = var.create ? 1 : 0
  project      = var.project
  service_name = var.service_name
  username     = var.username
  index        = var.index
  permission   = var.permission
}