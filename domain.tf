resource "azurerm_communication_service_email_domain_association" "this" {
  // TODO parse key just to name and also consider resource existance test via data source
  for_each = { for domain in var.email_domains : domain => domain }

  communication_service_id = azurerm_communication_service.this.id
  email_service_domain_id  = each.value.id

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azurerm_communication_service_email_domain_association"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azurerm_communication_service_email_domain_association"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    delete = try(
      local.metadata.resource_timeouts["azurerm_communication_service_email_domain_association"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}