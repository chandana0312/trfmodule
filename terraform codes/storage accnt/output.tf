output "stg_act_name_out" {

    value = azurerm_storage_account.examplestg.name

}
output "StgAccount" {

  value = module.StorageAccount.stg_act_name_out

 

}

output "RgName" {

  value = module.ResourceGroup.rg_name_out

 

}