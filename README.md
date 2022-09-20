# Aiven Opensearch Terraform module

Terraform module which creates Aiven Opensearch resources

## Usage

```hcl
module "opensearch" {
  source       = "tf-cloud-modules/opensearch/aiven"
  project      = "test"
  service_name = "test"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 3.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_opensearch.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/opensearch) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_name"></a> [cloud\_name](#input\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. | `string` | `"aws-us-east-1"` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_custom_domain"></a> [custom\_domain](#input\_custom\_domain) | Custom domain. | `string` | `""` | no |
| <a name="input_disable_replication_factor_adjustment"></a> [disable\_replication\_factor\_adjustment](#input\_disable\_replication\_factor\_adjustment) | Disable replication factor adjustment. | `string` | `""` | no |
| <a name="input_index_patterns"></a> [index\_patterns](#input\_index\_patterns) | Index patterns. | `any` | `[]` | no |
| <a name="input_index_template"></a> [index\_template](#input\_index\_template) | Index template. | `any` | `[]` | no |
| <a name="input_ip_filter"></a> [ip\_filter](#input\_ip\_filter) | IP filter. | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_keep_index_refresh_interval"></a> [keep\_index\_refresh\_interval](#input\_keep\_index\_refresh\_interval) | Don't reset index.refresh\_interval to the default value. | `string` | `""` | no |
| <a name="input_maintenance_window_dow"></a> [maintenance\_window\_dow](#input\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc. | `string` | `"thursday"` | no |
| <a name="input_maintenance_window_time"></a> [maintenance\_window\_time](#input\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format. | `string` | `"01:00:00"` | no |
| <a name="input_max_index_count"></a> [max\_index\_count](#input\_max\_index\_count) | Maximum index count. | `string` | `""` | no |
| <a name="input_opensearch_dashboards_user_config"></a> [opensearch\_dashboards\_user\_config](#input\_opensearch\_dashboards\_user\_config) | OpenSearch Dashboards settings. | `list(any)` | `[]` | no |
| <a name="input_opensearch_user_config"></a> [opensearch\_user\_config](#input\_opensearch\_user\_config) | Opensearch user configurable settings. | `list(any)` | `[]` | no |
| <a name="input_opensearch_version"></a> [opensearch\_version](#input\_opensearch\_version) | OpenSearch major version. | `string` | `"1"` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | Defines what kind of computing resources are allocated for the service. | `string` | `"startup-4"` | no |
| <a name="input_private_access_opensearch"></a> [private\_access\_opensearch](#input\_private\_access\_opensearch) | Allow clients to connect to opensearch with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations. | `bool` | `false` | no |
| <a name="input_private_access_opensearch_dashboards"></a> [private\_access\_opensearch\_dashboards](#input\_private\_access\_opensearch\_dashboards) | Allow clients to connect to opensearch\_dashboards with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations. | `bool` | `false` | no |
| <a name="input_private_access_prometheus"></a> [private\_access\_prometheus](#input\_private\_access\_prometheus) | Allow clients to connect to prometheus with a DNS name that always resolves to the service's private IP addresses. | `bool` | `false` | no |
| <a name="input_privatelink_opensearch"></a> [privatelink\_opensearch](#input\_privatelink\_opensearch) | Enable opensearch. | `bool` | `false` | no |
| <a name="input_privatelink_opensearch_dashboards"></a> [privatelink\_opensearch\_dashboards](#input\_privatelink\_opensearch\_dashboards) | Enable opensearch\_dashboards. | `bool` | `false` | no |
| <a name="input_privatelink_prometheus"></a> [privatelink\_prometheus](#input\_privatelink\_prometheus) | Enable prometheus. | `bool` | `false` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name | `string` | n/a | yes |
| <a name="input_project_to_fork_from"></a> [project\_to\_fork\_from](#input\_project\_to\_fork\_from) | Name of another project to fork a service from. | `string` | `""` | no |
| <a name="input_project_vpc_id"></a> [project\_vpc\_id](#input\_project\_vpc\_id) | Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC. | `string` | `null` | no |
| <a name="input_public_access_opensearch"></a> [public\_access\_opensearch](#input\_public\_access\_opensearch) | Allow clients to connect to opensearch from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_opensearch_dashboards"></a> [public\_access\_opensearch\_dashboards](#input\_public\_access\_opensearch\_dashboards) | Allow clients to connect to opensearch\_dashboards from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_prometheus"></a> [public\_access\_prometheus](#input\_public\_access\_prometheus) | Allow clients to connect to prometheus from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_recovery_basebackup_name"></a> [recovery\_basebackup\_name](#input\_recovery\_basebackup\_name) | Name of the basebackup to restore in forked service. | `string` | `""` | no |
| <a name="input_service_integrations"></a> [service\_integrations](#input\_service\_integrations) | Service integrations to specify when creating a service. | `list(any)` | `[]` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_service_to_fork_from"></a> [service\_to\_fork\_from](#input\_service\_to\_fork\_from) | Name of another service to fork from. | `string` | `""` | no |
| <a name="input_static_ips"></a> [static\_ips](#input\_static\_ips) | Static IPs that are going to be associated with this service. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of the service tags. | `list(any)` | `[]` | no |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_name"></a> [cloud\_name](#output\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. |
| <a name="output_components"></a> [components](#output\_components) | Service component information objects. |
| <a name="output_disk_space_cap"></a> [disk\_space\_cap](#output\_disk\_space\_cap) | The maximum disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_default"></a> [disk\_space\_default](#output\_disk\_space\_default) | The default disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_step"></a> [disk\_space\_step](#output\_disk\_space\_step) | The default disk space step of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_maintenance_window_dow"></a> [maintenance\_window\_dow](#output\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. |
| <a name="output_maintenance_window_time"></a> [maintenance\_window\_time](#output\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. |
| <a name="output_opensearch_user_config"></a> [opensearch\_user\_config](#output\_opensearch\_user\_config) | Opensearch user configurable settings. |
| <a name="output_plan"></a> [plan](#output\_plan) | Defines what kind of computing resources are allocated for the service. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_service_host"></a> [service\_host](#output\_service\_host) | The hostname of the service. |
| <a name="output_service_integrations"></a> [service\_integrations](#output\_service\_integrations) | Service integrations to specify when creating a service. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the actual name of the service. |
| <a name="output_service_password"></a> [service\_password](#output\_service\_password) | Password used for connecting to the service, if applicable. |
| <a name="output_service_port"></a> [service\_port](#output\_service\_port) | The port of the service. |
| <a name="output_service_type"></a> [service\_type](#output\_service\_type) | Aiven internal service type code. |
| <a name="output_service_uri"></a> [service\_uri](#output\_service\_uri) | URI for connecting to the service. |
| <a name="output_service_username"></a> [service\_username](#output\_service\_username) | Username used for connecting to the service. |
| <a name="output_static_ips"></a> [static\_ips](#output\_static\_ips) | Static IPs that are going to be associated with this service. |
<!-- END_TF_DOCS -->