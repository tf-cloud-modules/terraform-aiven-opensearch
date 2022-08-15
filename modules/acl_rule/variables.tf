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

variable "index" {
  description = "The index pattern for this ACL entry."
  type        = string
}

variable "permission" {
  description = "The permissions for this ACL entry."
  type        = string
}


variable "username" {
  description = "The username for the ACL entry."
  type        = string
}
