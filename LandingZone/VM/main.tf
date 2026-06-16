data "azurerm_network_interface" "nic" {

  for_each = var.virtual_machines

  name                = each.value.network_interface_name
  resource_group_name = each.value.resource_group_name

}

resource "azurerm_linux_virtual_machine" "vm" {

  for_each = var.virtual_machines

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  size = each.value.size

  admin_username = each.value.admin_username
  admin_password = each.value.admin_password

  disable_password_authentication = false

  network_interface_ids = [
    data.azurerm_network_interface.nic[each.key].id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }

}