resource "azurerm_storage_account" "strapi_stor_shf" {
  name                     = "pstoragevarunvk"
  resource_group_name      = azurerm_resource_group.varunvk_strapi.name
  location                 = azurerm_resource_group.varunvk_strapi.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}

resource "azurerm_storage_container" "strapi_container" {
  name                  = "secretfilevarunvk"
  storage_account_name  = azurerm_storage_account.strapi_stor_shf.name
  container_access_type = "private"
  depends_on = [ azurerm_storage_account.strapi_stor_shf ]
}
