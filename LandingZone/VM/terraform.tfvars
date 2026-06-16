virtual_machines = {

  vm1 = {

    name                = "linux-vm"
    location            = "Central India"
    resource_group_name = "darshna-rg"

    size = "Standard_B2s_v2"

    admin_username = "azureuser"
    admin_password = "Azure@12345!"

    network_interface_name = "vm-nic"

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"

  }

}