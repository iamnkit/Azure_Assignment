# terraform.tfvars

# General settings
project_name        = "microservices-aks"
location            = "East US"
resource_group_name = "rg-microservices-aks"

# AKS settings
cluster_name        = "aks-microservices"
node_count          = 2
node_vm_size        = "Standard_B4ms"
min_node_count      = 2
max_node_count      = 5

# Networking
vnet_name           = "vnet-microservices"
subnet_name         = "subnet-aks"
address_space       = ["10.0.0.0/16"]
subnet_prefix       = "10.0.1.0/24"

# ACR (Azure Container Registry)
acr_name            = "acrMicroServices123"

# Key Vault
keyvault_name       = "kv-microservices"

# Tags
tags = {
  environment = "dev"
  project     = "microservices-aks"
}
