/*
 * # wanted-cloud/terraform-azure-communication-service
 * 
 * Terraform building block managing Azure Communication Service and related resources.
 */

resource "azurerm_communication_service" "this" {
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.nam
  data_location       = var.data_location

  tags = merge(local.metadata.tags, var.tags)

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azurerm_communication_service"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azurerm_communication_service"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azurerm_communication_service"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azurerm_communication_service"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}