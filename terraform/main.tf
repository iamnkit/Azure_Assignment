module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "acr" {
  source              = "./modules/acr"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "keyvault" {
  source              = "./modules/keyvault"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = var.resource_group_name
  location            = var.location
  acr_id              = module.acr.id
  subnet_id           = module.network.subnet_id
}
