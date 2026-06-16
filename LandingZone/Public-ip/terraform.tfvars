public_ips = {

  pip1 = {

    name                = "vm-pip"
    location            = "Central India"
    resource_group_name = "darshna-rg"

    allocation_method = "Static"
  }

 pip2 = {
    name                = "bastion-pip"
    location            = "Central India"
    resource_group_name = "darshna-rg"
    allocation_method   = "Static"
  }

}