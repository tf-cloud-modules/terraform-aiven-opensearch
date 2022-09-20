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


    dynamic "index_patterns" {
      for_each = var.index_patterns
      content {
        max_index_count   = lookup(index_patterns.value, "max_index_count", null)
        pattern           = lookup(index_patterns.value, "pattern", null)
        sorting_algorithm = lookup(index_patterns.value, "sorting_algorithm", null)
      }
    }

    dynamic "index_template" {
      for_each = var.index_template
      content {
        mapping_nested_objects_limit = lookup(index_template.value, "mapping_nested_objects_limit", null)
        number_of_replicas           = lookup(index_template.value, "number_of_replicas", null)
        number_of_shards             = lookup(index_template.value, "number_of_shards", null)
      }
    }

    dynamic "opensearch" {
      for_each = var.opensearch_user_config
      content {
        action_auto_create_index_enabled                      = lookup(opensearch.value, "action_auto_create_index_enabled", null)
        action_destructive_requires_name                      = lookup(opensearch.value, "action_destructive_requires_name", null)
        cluster_max_shards_per_node                           = lookup(opensearch.value, "cluster_max_shards_per_node", null)
        cluster_routing_allocation_node_concurrent_recoveries = lookup(opensearch.value, "cluster_routing_allocation_node_concurrent_recoveries", null)
        email_sender_name                                     = lookup(opensearch.value, "email_sender_name", null)
        email_sender_password                                 = lookup(opensearch.value, "email_sender_password", null)
        email_sender_username                                 = lookup(opensearch.value, "email_sender_username", null)
        http_max_content_length                               = lookup(opensearch.value, "http_max_content_length", null)
        http_max_header_size                                  = lookup(opensearch.value, "http_max_header_size", null)
        http_max_initial_line_length                          = lookup(opensearch.value, "http_max_initial_line_length", null)
        indices_fielddata_cache_size                          = lookup(opensearch.value, "indices_fielddata_cache_size", null)
        indices_memory_index_buffer_size                      = lookup(opensearch.value, "indices_memory_index_buffer_size", null)
        indices_queries_cache_size                            = lookup(opensearch.value, "indices_queries_cache_size", null)
        indices_query_bool_max_clause_count                   = lookup(opensearch.value, "indices_query_bool_max_clause_count", null)
        indices_recovery_max_bytes_per_sec                    = lookup(opensearch.value, "indices_recovery_max_bytes_per_sec", null)
        indices_recovery_max_concurrent_file_chunks           = lookup(opensearch.value, "indices_recovery_max_concurrent_file_chunks", null)
        override_main_response_version                        = lookup(opensearch.value, "override_main_response_version", null)
        reindex_remote_whitelist                              = lookup(opensearch.value, "reindex_remote_whitelist", null)
        script_max_compilations_rate                          = lookup(opensearch.value, "script_max_compilations_rate", null)
        search_max_buckets                                    = lookup(opensearch.value, "search_max_buckets", null)
        thread_pool_analyze_queue_size                        = lookup(opensearch.value, "thread_pool_analyze_queue_size", null)
        thread_pool_analyze_size                              = lookup(opensearch.value, "thread_pool_analyze_size", null)
        thread_pool_force_merge_size                          = lookup(opensearch.value, "thread_pool_force_merge_size", null)
        thread_pool_get_queue_size                            = lookup(opensearch.value, "thread_pool_get_queue_size", null)
        thread_pool_get_size                                  = lookup(opensearch.value, "thread_pool_get_size", null)
        thread_pool_search_queue_size                         = lookup(opensearch.value, "thread_pool_search_queue_size", null)
        thread_pool_search_size                               = lookup(opensearch.value, "thread_pool_search_size", null)
        thread_pool_search_throttled_queue_size               = lookup(opensearch.value, "thread_pool_search_throttled_queue_size", null)
        thread_pool_search_throttled_size                     = lookup(opensearch.value, "thread_pool_search_throttled_size", null)
        thread_pool_write_queue_size                          = lookup(opensearch.value, "thread_pool_write_queue_size", null)
        thread_pool_write_size                                = lookup(opensearch.value, "thread_pool_write_size", null)
      }
    }

    dynamic "opensearch_dashboards" {
      for_each = var.opensearch_dashboards_user_config
      content {
        enabled                    = lookup(opensearch_dashboards.value, "enabled", null)
        max_old_space_size         = lookup(opensearch_dashboards.value, "max_old_space_size", null)
        opensearch_request_timeout = lookup(opensearch_dashboards.value, "opensearch_request_timeout", null)
      }
    }
  }

  dynamic "service_integrations" {
    for_each = var.service_integrations
    content {
      integration_type    = lookup(service_integrations.value, "integration_type", null)
      source_service_name = lookup(service_integrations.value, "source_service_name", null)
    }
  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(tag.value, "key", null)
      value = lookup(tag.value, "value", null)
    }
  }
}