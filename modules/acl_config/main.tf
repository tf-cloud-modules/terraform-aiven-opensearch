resource "aiven_opensearch_acl_config" "this" {
  count        = var.create ? 1 : 0
  project      = var.project
  service_name = var.service_name
  enabled      = var.enabled
  extended_acl = var.extended_acl
}