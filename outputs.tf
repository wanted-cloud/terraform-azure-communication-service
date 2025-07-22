output "communication_service" {
  value       = azurerm_communication_service.this
  description = "Values of the Azure Communication Service resource."
}

output "email_domain_ids" {
  value       = [for domain in azurerm_communication_service_email_domain_association.this : domain.email_service_domain_id]
  description = "List of email domain IDs associated with the Azure Communication Service."
}