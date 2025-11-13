data "azurerm_resource_group" "existing" {
  name = var.resource_group_name
}

module "network" {
  source              = "./modules/network"
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_group.existing.location
  vnet_name           = var.vnet_name
  subnet_name         = var.subnet_name
  address_space       = var.address_space
  subnet_prefix       = var.subnet_prefix
}

module "acr" {
  source              = "./modules/acr"
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_group.existing.location
  acr_name            = var.acr_name
}

module "keyvault" {
  source              = "./modules/keyvault"
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_group.existing.location
  keyvault_name       = var.keyvault_name
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_group.existing.location
  cluster_name        = var.cluster_name
  node_count          = var.node_count
  node_vm_size        = var.node_vm_size
  min_node_count      = var.min_node_count
  max_node_count      = var.max_node_count
  subnet_id           = module.network.subnet_id
  acr_id              = module.acr.id
}
