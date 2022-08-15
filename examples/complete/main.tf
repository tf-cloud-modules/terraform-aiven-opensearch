module "opensearch" {
  source       = "../.."
  project      = var.project
  service_name = var.service_name
  index_patterns = [
    {
      max_index_count   = "10"
      pattern           = "logs-*"
      sorting_algorithm = "alphabetical"
    }
  ]
  index_template = [{
    mapping_nested_objects_limit = "10"
    number_of_replicas           = "2"
    number_of_shards             = "2"
  }]
}

module "user" {
  source       = "../../modules/user"
  project      = module.opensearch.project
  service_name = module.opensearch.service_name
  username     = "test"
}