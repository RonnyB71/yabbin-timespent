variable "AGENT_CLIENT_ID" {
  type        = string
}

variable "AGENT_CLIENT_SECRET" {
  type        = string
}

variable "SUBSCRIPTION_ID" {
  type        = string
}

variable "TENANT_ID" {
  type        = string
}

variable "name" {
  type        = string
  description = "Location of the azure resource group."
  default     = "timespent"
}

variable "environment" {
  type        = string
  description = "Name of the deployment environment"
  default     = "prod"
}

variable "location" {
  type        = string
  description = "Location to deploy the resoruce group"
  default     = "norwayeast"
}

variable "dns_prefix" {
  type        = string
  description = "A prefix for any dns based resources"
  default     = "yts"
}

variable "plan_tier" {
  type        = string
  description = "The tier of app service plan to create"
  default     = "Standard"
}

variable "plan_sku" {
  type        = string
  description = "The sku of app service plan to create"
  default     = "S1"
}