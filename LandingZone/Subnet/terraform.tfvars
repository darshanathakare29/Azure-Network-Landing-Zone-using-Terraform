subnets = {

  subnet1 = {

    name                 = "vm-subnet"
    resource_group_name  = "darshna-rg"
    virtual_network_name = "dev-vnet"

    address_prefixes = [
      "10.0.1.0/24"
    ]
  }

  subnet2 = {

    name                 = "AzureBastionSubnet"
    resource_group_name  = "darshna-rg"
    virtual_network_name = "dev-vnet"

    address_prefixes = [
      "10.0.2.0/24"
    ]
  }

}