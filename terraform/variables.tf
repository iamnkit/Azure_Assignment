# variables.tf

# General
variable "project_name" {
  description = "Project name prefix for resources"
  type        = string
}

variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

# AKS cluster settings
variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Default number of AKS nodes"
  type        = number
  default     = 2
}

variable "node_vm_size" {
  description = "VM size for AKS node pool"
  type        = string
  default     = "Standard_B4ms"
}

variable "min_node_count" {
  description = "Minimum node count for autoscaler"
  type        = number
  default     = 2
}

variable "max_node_count" {
  description = "Maximum node count for autoscaler"
  type        = number
  default     = 5
}

# Networking
variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name for AKS"
  type        = string
}

variable "address_space" {
  description = "Address space for the VNet"
  type        = list(string)
}

variable "subnet_prefix" {
  description = "Address prefix for AKS subnet"
  type        = string
}

# ACR (Azure Container Registry)
variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
}

# Key Vault
variable "keyvault_name" {
  description = "Azure Key Vault name"
  type        = string
}

# Tags
variable "tags" {
  description = "Tags applied to all resources"
  type        = map(string)
  default     = {}
}
