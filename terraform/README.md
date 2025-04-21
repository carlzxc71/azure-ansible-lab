<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.113.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.113.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.control](https://registry.terraform.io/providers/hashicorp/azurerm/3.113.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_linux_virtual_machine.node](https://registry.terraform.io/providers/hashicorp/azurerm/3.113.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.control](https://registry.terraform.io/providers/hashicorp/azurerm/3.113.0/docs/resources/network_interface) | resource |
| [azurerm_network_interface.node](https://registry.terraform.io/providers/hashicorp/azurerm/3.113.0/docs/resources/network_interface) | resource |
| [azurerm_public_ip.control](https://registry.terraform.io/providers/hashicorp/azurerm/3.113.0/docs/resources/public_ip) | resource |
| [azurerm_public_ip.node](https://registry.terraform.io/providers/hashicorp/azurerm/3.113.0/docs/resources/public_ip) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.113.0/docs/resources/resource_group) | resource |
| [azurerm_subnet.control](https://registry.terraform.io/providers/hashicorp/azurerm/3.113.0/docs/resources/subnet) | resource |
| [azurerm_subnet.node](https://registry.terraform.io/providers/hashicorp/azurerm/3.113.0/docs/resources/subnet) | resource |
| [azurerm_virtual_machine_extension.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.113.0/docs/resources/virtual_machine_extension) | resource |
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.113.0/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | The password for the admin user | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_control_pip"></a> [control\_pip](#output\_control\_pip) | value of the public ip address of the control |
| <a name="output_node_pip"></a> [node\_pip](#output\_node\_pip) | value of the public ip address of the node |
<!-- END_TF_DOCS -->