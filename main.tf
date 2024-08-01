resource "azurerm_resource_group" "rg_name" {
   name = var.rgname
   location = "southcentralus"
   }

resource "azurerm_key_vault" "azkeyvault" {
   name = "sc-kv-dev-01"
   location = azurerm_resource_group.rg_name.location
   tenant_id = data.azurerm_client_config.current.tenant_id
   resource_group_name = azurerm_resource_group.rg_name.name
   sku_name = "standard"
   soft_delete_retention_days = 7
   purge_protection_enabled = false

   access_policy  {
   tenent_id = data.azurerm_client_config.current.tenent_id
   object_id = data.azurerm_client_config.current.object_id

   key_permissions = [ "Get", "Update", ]
   secret_permissions = [ "Get", "Update", ]
   storage_permissions = [ "Get", "Delete", ]

   }
}

