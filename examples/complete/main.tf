module "opensearch" {
  source       = "../.."
  project      = "tf-cloud-modules"
  service_name = "test"
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
  tags = [
    {
      key   = "env"
      value = "test"
    }
  ]
}

module "user" {
  source       = "../../modules/user"
  project      = module.opensearch.project
  service_name = module.opensearch.service_name
  username     = "test"
}

module "acl_config" {
  source       = "../../modules/acl_config"
  project      = module.opensearch.project
  service_name = module.opensearch.service_name
}

module "acl_rule" {
  source       = "../../modules/acl_rule"
  project      = module.opensearch.project
  service_name = module.opensearch.service_name
  index        = "logs"
  permission   = "readwrite"
  username     = "test"
}