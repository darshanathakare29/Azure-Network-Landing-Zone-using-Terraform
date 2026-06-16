vnets = {

  vnet1 = {

    name                = "dev-vnet"
    location            = "Central India"
    resource_group_name = "darshna-rg"

    address_space = [
      "10.0.0.0/16"
    ]
  }

  vnet2 = {

    name                = "peer-vnet"
    location            = "Central India"
    resource_group_name = "darshna-rg"

    address_space = [
      "20.0.0.0/16"
    ]
  }

}