peerings = {

  peer1 = {

    name                  = "dev-to-peer"
    resource_group_name   = "darshna-rg"

    virtual_network_name  = "dev-vnet"
    remote_vnet_name      = "peer-vnet"

  }

  peer2 = {

    name                  = "peer-to-dev"
    resource_group_name   = "darshna-rg"

    virtual_network_name  = "peer-vnet"
    remote_vnet_name      = "dev-vnet"

  }

}