resource "azurerm_resource_group" "rg_name" {
   name = var.rgname
   location = "southcentralus"
   }

resource "azurerm_keyvault" "azkeyvault" {
   name = "sc-kv-dev-01"
   location = azurerm_resource_group.rg_name.location
   tenant_id = azurerm_client_config_current.tenant_id
   resource_group = azurerm_resource_group.rg_name.name
   sku_name = "standard"
   soft_delete_retention_days = 7
   purge_protection_enabled = false
}

