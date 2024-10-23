variable "project_prefix" {
  type        = string
  description = "prefix string put in front of string"
  default     = "f5xc"
}

variable "project_suffix" {
  type        = string
  description = "prefix string put at the end of string"
  default     = "100"
}

variable "f5xc_api_p12_file" {
  type = string
}

variable "f5xc_api_url" {
  type = string
}

variable "f5xc_api_token" {
  type = string
}

variable "f5xc_tenant" {
  type = string
}

variable "f5xc_namespace" {
  type    = string
  default = "system"
}

variable "f5xc_ce_gateway_type" {
  description = "F5 XC CE gateway type"
  type        = string
  default     = "ingress_gateway"
}

variable "f5xc_sms_provider_name" {
  type    = string
  default = "rseries"
}

variable "f5xc_sms_master_nodes_count" {
  type    = number
  default = 1
}

variable "f5os_api_port" {
  type = number
}

variable "f5os_api_address" {
  type = string
}

variable "f5os_api_username" {
  type = string
}

variable "f5os_api_password" {
  type = string
}

variable "f5os_api_schema" {
  type    = string
  default = "https"
}

variable "f5os_api_base_uri" {
  type    = string
  default = "restconf/data"
}

variable "f5os_tenant_config_memory" {
  type = number
}

variable "f5os_tenant_config_image" {
  type = string
}

variable "f5os_tenant_config_nodes" {
  type = list(number)
}

variable "f5os_tenant_config_metadata" {
  type = list(string)
}

variable "f5os_tenant_config_vlans" {
  type = list(number)
}

variable "f5os_tenant_config_storage_size" {
  type = number
}

variable "f5os_tenant_config_vcpu_cores_per_node" {
  type = number
}