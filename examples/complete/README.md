# Complete Aiven Opensearch Example

Configuration in this directory creates AWS Backup resources with following features:

- Aiven Opensearch cluster

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_opensearch"></a> [opensearch](#module\_opensearch) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->