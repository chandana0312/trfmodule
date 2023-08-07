resource "azurerm_storage_account" "examplestg" {

    name=var.stgbase_name

    resource_group_name = var.resource_group_name

    location = var.location

    account_tier = "Standard"

    account_replication_type = "GRS"

}
module "ResourceGroup" {

  source    = "./ResourceGroup"

  base_name = "tfexample"

  location  = "East US"

}

 

module "StorageAccount" {

  source              = "./StorageAccount"

  stgbase_name        = "exampl2"

  resource_group_name = module.ResourceGroup.rg_name_out

  location            = "East US"

 

}

 

module "vM" {

    source = "./ResourceGroup"

 

}

module "VMSS" {

    source = "./StorageAccount"

 

}