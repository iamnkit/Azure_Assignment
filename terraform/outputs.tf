# outputs.tf

output "resource_group_name" {
  description = "Name of the resource group"
  value       = var.resource_group_name
}

output "aks_cluster_name" {
  description = "AKS cluster name"
  value       = module.aks.cluster_name
}

output "aks_cluster_id" {
  description = "AKS cluster resource ID"
  value       = module.aks.cluster_id
}

output "kube_config" {
  description = "Kubeconfig command to connect to AKS"
  value       = "az aks get-credentials --resource-group ${var.resource_group_name} --name ${module.aks.cluster_name}"
}

output "acr_name" {
  description = "Azure Container Registry name"
  value       = module.acr.acr_name
}

output "acr_login_server" {
  description = "ACR login server URL"
  value       = module.acr.login_server
}

output "keyvault_name" {
  description = "Azure Key Vault name"
  value       = module.keyvault.name
}

output "network_subnet_id" {
  description = "Subnet ID for AKS nodes"
  value       = module.network.subnet_id
}
