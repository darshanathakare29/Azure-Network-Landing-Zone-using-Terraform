bastions = {

  bastion1 = {

    name                = "bastion-host"
    location            = "Central India"
    resource_group_name = "darshna-rg"

    subnet_name          = "AzureBastionSubnet"
    virtual_network_name = "dev-vnet"

    public_ip_name = "bastion-pip"

  }

}