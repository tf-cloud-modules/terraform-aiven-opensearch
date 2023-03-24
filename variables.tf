variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "cloud_name" {
  description = "Defines where the cloud provider and region where the service is hosted in."
  type        = string
  default     = "aws-us-east-1"
}

variable "maintenance_window_dow" {
  description = "Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc."
  type        = string
  default     = "thursday"
}

variable "maintenance_window_time" {
  description = "Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format."
  type        = string
  default     = "01:00:00"
}

variable "plan" {
  description = "Defines what kind of computing resources are allocated for the service."
  type        = string
  default     = "startup-4"
}

variable "project" {
  description = "Aiven Cloud Project Name"
  type        = string
}

variable "project_vpc_id" {
  description = "Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC."
  type        = string
  default     = null
}

variable "static_ips" {
  description = "Static IPs that are going to be associated with this service."
  type        = list(string)
  default     = []
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "tags" {
  description = "List of the service tags."
  type        = list(any)
  default     = []
}

variable "termination_protection" {
  description = "Prevents the service from being deleted."
  type        = bool
  default     = false
}

variable "custom_domain" {
  description = "Custom domain."
  type        = string
  default     = ""
}

variable "disable_replication_factor_adjustment" {
  description = "Disable replication factor adjustment."
  type        = bool
  default     = null
}

variable "keep_index_refresh_interval" {
  description = "Don't reset index.refresh_interval to the default value."
  type        = bool
  default     = null
}

variable "max_index_count" {
  description = "Maximum index count."
  type        = number
  default     = null
}

variable "opensearch_version" {
  description = "OpenSearch major version."
  type        = string
  default     = "1"
}

variable "project_to_fork_from" {
  description = "Name of another project to fork a service from."
  type        = string
  default     = ""
}

variable "recovery_basebackup_name" {
  description = "Name of the basebackup to restore in forked service."
  type        = string
  default     = ""
}

variable "service_to_fork_from" {
  description = "Name of another service to fork from."
  type        = string
  default     = ""
}


variable "public_access_prometheus" {
  description = "Allow clients to connect to prometheus from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "public_access_opensearch" {
  description = "Allow clients to connect to opensearch from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "public_access_opensearch_dashboards" {
  description = "Allow clients to connect to opensearch_dashboards from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "private_access_prometheus" {
  description = "Allow clients to connect to prometheus with a DNS name that always resolves to the service's private IP addresses."
  type        = bool
  default     = false
}

variable "private_access_opensearch" {
  description = "Allow clients to connect to opensearch with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations."
  type        = bool
  default     = false
}

variable "private_access_opensearch_dashboards" {
  description = "Allow clients to connect to opensearch_dashboards with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations."
  type        = bool
  default     = false
}

variable "privatelink_prometheus" {
  description = "Enable prometheus."
  type        = bool
  default     = false
}

variable "privatelink_opensearch" {
  description = "Enable opensearch."
  type        = bool
  default     = false
}

variable "privatelink_opensearch_dashboards" {
  description = "Enable opensearch_dashboards."
  type        = bool
  default     = false
}

variable "index_patterns" {
  description = "Index patterns."
  type        = any
  default     = []
}

variable "index_template" {
  description = "Index template."
  type        = any
  default     = []
}

variable "opensearch_user_config" {
  description = "Opensearch user configurable settings."
  type        = list(any)
  default     = []
}

variable "opensearch_dashboards_user_config" {
  description = "OpenSearch Dashboards settings."
  type        = list(any)
  default     = []
}

variable "service_integrations" {
  description = "Service integrations to specify when creating a service."
  type        = list(any)
  default     = []
}

variable "ip_filter_object" {
  description = "Allow incoming connections from CIDR address block, e.g. '10.20.0.0/16'."
  type        = list(any)
  default     = []
}