resource "azurerm_resource_group" "abb-test-rg" {
  name     = "abb-res-gr"
  location = var.location
}
 

resource "azurerm_app_service_plan" "abbplan" {
  name                = "abb-service-plan"
  location            = azurerm_resource_group.abb-test-rg.location
  resource_group_name = azurerm_resource_group.abb-test-rg.name
  kind                = var.os
  reserved            = true
  
  sku {
    tier = var.tier
    size = var.size
  }
}



resource "azurerm_app_service" "abbapp" {
  name                = "abb-task-app-with-docker-and-terraform"
  location            = azurerm_resource_group.abb-test-rg.location
  resource_group_name = azurerm_resource_group.abb-test-rg.name
  app_service_plan_id = azurerm_app_service_plan.abbplan.id

  site_config {
    linux_fx_version = "DOCKER|armen8793/abbtask:v3"
  }

  app_settings = local.env_variables
}
