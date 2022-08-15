# Aiven Opensearch ACL Config Terraform module

Terraform module which creates Aiven Opensearch ACL Config resources

## Usage

```hcl
module "acl_config" {
  source        = "tf-cloud-modules/opensearch/aiven//modules/acl_config"
  project       = "test"
  service_name  = "test"
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
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_opensearch_acl_config.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/opensearch_acl_config) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Enable Opensearch ACLs. When disabled authenticated service users have unrestricted access. | `bool` | `true` | no |
| <a name="input_extended_acl"></a> [extended\_acl](#input\_extended\_acl) | Index rules can be applied in a limited fashion to the \_mget, \_msearch and \_bulk APIs (and only those) by enabling the ExtendedAcl option for the service. When it is enabled, users can use these APIs as long as all operations only target indexes they have been granted access to. | `bool` | `true` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the actual name of the service. |
<!-- END_TF_DOCS -->