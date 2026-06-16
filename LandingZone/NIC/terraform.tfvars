network_interfaces = {

  nic1 = {

    name                 = "vm-nic"
    location             = "Central India"
    resource_group_name  = "darshna-rg"

    subnet_name          = "vm-subnet"
    virtual_network_name = "dev-vnet"

    public_ip_name       = "vm-pip"

  }

}