variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "project" {
  description = "Aiven Cloud Project Name."
  type        = string
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "enabled" {
  description = "Enable Opensearch ACLs. When disabled authenticated service users have unrestricted access."
  type        = bool
  default     = true
}

variable "extended_acl" {
  description = "Index rules can be applied in a limited fashion to the _mget, _msearch and _bulk APIs (and only those) by enabling the ExtendedAcl option for the service. When it is enabled, users can use these APIs as long as all operations only target indexes they have been granted access to."
  type        = bool
  default     = true
}