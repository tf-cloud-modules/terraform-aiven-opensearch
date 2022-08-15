resource "aiven_opensearch" "this" {
  count                   = var.create ? 1 : 0
  cloud_name              = var.cloud_name
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  plan                    = var.plan
  project                 = var.project
  project_vpc_id          = var.project_vpc_id
  static_ips              = var.static_ips
  service_name            = var.service_name
  termination_protection  = var.termination_protection

  opensearch_user_config {
    custom_domain                         = var.custom_domain
    disable_replication_factor_adjustment = var.disable_replication_factor_adjustment
    ip_filter                             = var.ip_filter
    keep_index_refresh_interval           = var.keep_index_refresh_interval
    max_index_count                       = var.max_index_count
    opensearch_version                    = var.opensearch_version
    project_to_fork_from                  = var.project_to_fork_from
    recovery_basebackup_name              = var.recovery_basebackup_name
    service_to_fork_from                  = var.service_to_fork_from


    public_access {
      prometheus            = var.public_access_prometheus
      opensearch            = var.public_access_opensearch
      opensearch_dashboards = var.public_access_opensearch_dashboards
    }

    private_access {
      prometheus            = var.private_access_prometheus
      opensearch            = var.private_access_opensearch
      opensearch_dashboards = var.private_access_opensearch_dashboards
    }

    privatelink_access {
      prometheus            = var.privatelink_prometheus
      opensearch            = var.privatelink_opensearch
      opensearch_dashboards = var.privatelink_opensearch_dashboards
    }

  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(service_integrations.value, "key", null)
      value = lookup(service_integrations.value, "value", null)
    }
  }
}