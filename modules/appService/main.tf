resource "azurerm_app_service_plan" "appServicePlan" {
  name                = var.appServicePlanName
  location            = var.rgLocation
  resource_group_name = avar.rgName

  sku {
    tier = "Standard"
    size = "S1"
  }

  kind = "linux"
  reserved = true
}

resource "azurerm_app_service" "gossipIt_app" {
  name                = var.appServiceName
  location            = var.rgLocation
  resource_group_name = var.rgName
  app_service_plan_id = azurerm_app_service_plan.appServicePlan.id

  site_config {
      linux_fx_version ="DOTNETCORE|3.1"
  }

}