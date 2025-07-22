<!-- BEGIN_TF_DOCS -->
# wanted-cloud/terraform-azure-communication-service

Terraform building block managing Azure Communication Service and related resources.

## Table of contents

- [Requirements](#requirements)
- [Providers](#providers)
- [Variables](#inputs)
- [Outputs](#outputs)
- [Resources](#resources)
- [Usage](#usage)
- [Contributing](#contributing)

## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.11)

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (>=4.20.0)

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) (>=4.20.0)

## Required Inputs

The following input variables are required:

### <a name="input_name"></a> [name](#input\_name)

Description: Name of the Azure Keyvault.

Type: `string`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: Name of the resource group in which the Azure Keyvault will be created.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_data_location"></a> [data\_location](#input\_data\_location)

Description: Location of the data for the Azure Communication Service.

Type: `string`

Default: `"Europe"`

### <a name="input_email_domains"></a> [email\_domains](#input\_email\_domains)

Description: List of email domains to be used for the Azure Communication Service.

Type: `list(string)`

Default: `[]`

### <a name="input_metadata"></a> [metadata](#input\_metadata)

Description: Metadata definitions for the module, this is optional construct allowing override of the module defaults defintions of validation expressions, error messages, resource timeouts and default tags.

Type:

```hcl
object({
    resource_timeouts = optional(
      map(
        object({
          create = optional(string, "30m")
          read   = optional(string, "5m")
          update = optional(string, "30m")
          delete = optional(string, "30m")
        })
      ), {}
    )
    tags                     = optional(map(string), {})
    validator_error_messages = optional(map(string), {})
    validator_expressions    = optional(map(string), {})
  })
```

Default: `{}`

### <a name="input_tags"></a> [tags](#input\_tags)

Description: A map of tags to assign to the resource.

Type: `map(string)`

Default: `{}`

## Outputs

The following outputs are exported:

### <a name="output_communication_service"></a> [communication\_service](#output\_communication\_service)

Description: Values of the Azure Communication Service resource.

### <a name="output_email_domain_ids"></a> [email\_domain\_ids](#output\_email\_domain\_ids)

Description: List of email domain IDs associated with the Azure Communication Service.

## Resources

The following resources are used by this module:

- [azurerm_communication_service.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/communication_service) (resource)
- [azurerm_communication_service_email_domain_association.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/communication_service_email_domain_association) (resource)
- [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) (data source)

## Usage

> For more detailed examples navigate to `examples` folder of this repository.

Module was also published via Terraform Registry and can be used as a module from the registry.

```hcl
module "example" {
  source  = "wanted-cloud/..."
  version = "x.y.z"
}
```

### Basic usage example

The minimal usage for the module is as follows:

```hcl
module "template" {
    source = "../.."
}
```
## Contributing

_Contributions are welcomed and must follow [Code of Conduct](https://github.com/wanted-cloud/.github?tab=coc-ov-file) and common [Contributions guidelines](https://github.com/wanted-cloud/.github/blob/main/docs/CONTRIBUTING.md)._

> If you'd like to report security issue please follow [security guidelines](https://github.com/wanted-cloud/.github?tab=security-ov-file).
---
<sup><sub>_2025 &copy; All rights reserved - WANTED.solutions s.r.o._</sub></sup>
<!-- END_TF_DOCS -->