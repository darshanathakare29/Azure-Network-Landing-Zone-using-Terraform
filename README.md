# Azure Network Landing Zone using Terraform

## Overview

This project demonstrates the provisioning of a secure Azure Network Landing Zone using Terraform. The infrastructure is deployed using Infrastructure as Code (IaC) principles and provides a reusable cloud foundation for hosting workloads in Microsoft Azure.

The solution includes networking, security, remote administration, and connectivity components commonly used in Azure environments.


---

## Infrastructure Components

### Resource Group (RG)

* Logical container for Azure resources.

### Virtual Network (VNet)

* Provides network isolation and connectivity.
* CIDR Block: `10.0.0.0/16`

### Subnets

* Public Subnet
* Private Subnet
* Gateway Subnet

### Network Security Group (NSG)

* Controls inbound and outbound traffic.
* Implements security rules for Azure resources.

### Public IP

* Provides internet accessibility for external connectivity.

### Network Interface Card (NIC)

* Connects virtual machines to Azure Virtual Networks.

### Azure Bastion

* Secure browser-based SSH/RDP access to virtual machines.
* Eliminates direct exposure of management ports.

### Virtual Machine (Ubuntu)

* Linux VM deployed inside the private subnet.

### VNet Peering

* Enables communication between virtual networks.

---

## Architecture Flow

Internet
↓
Public IP
↓
Azure Bastion
↓
Virtual Network (VNet)
↓
Subnet
↓
Network Security Group (NSG)
↓
Network Interface (NIC)
↓
Ubuntu Virtual Machine

Additional Connectivity:
VNet Peering → Remote Networks

---

## Technologies Used

* Terraform
* Microsoft Azure
* Azure Virtual Network
* Azure Bastion
* Azure Network Security Groups
* Azure Virtual Machines
* Azure Public IP
* Azure VNet Peering
* Linux (Ubuntu)

---

## Project Structure

```text
azure-network-landing-zone-terraform/
│
├── Azure-Bastion/
├── NIC/
├── NSG/
├── Public-ip/
├── RG/
├── Subnet/
├── VM/
├── VNet/
├── Vnet-peering/
│
├── provider.tf
├── variables.tf
├── outputs.tf
├── main.tf
└── README.md
```

## Deployment Steps

### Clone Repository

```bash
git clone https://github.com/your-username/azure-network-landing-zone-terraform.git
cd azure-network-landing-zone-terraform
```

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Review Execution Plan

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

### Destroy Infrastructure

```bash
terraform destroy
```

---

## Key Features

* Infrastructure as Code (IaC)
* Modular Azure Resource Deployment
* Secure Network Segmentation
* Azure Bastion Access
* VNet Peering Configuration
* Reusable Terraform Configuration
* Automated Infrastructure Provisioning

---

## Challenges Faced

* Azure VM SKU availability issues.
* NSG configuration and SSH access troubleshooting.
* Network Security Group association.
* Public IP accessibility validation.
* Terraform resource dependencies.

---

## Future Enhancements

* Azure Monitor Integration
* Log Analytics Workspace
* Azure Key Vault
* Azure Policy
* GitHub Actions CI/CD
* AKS (Azure Kubernetes Service)
* Terraform Remote State Storage

---

## Learning Outcomes

Through this project, I gained hands-on experience with:

* Terraform Infrastructure as Code
* Azure Networking
* Azure Security Concepts
* Virtual Network Design
* Bastion Host Configuration
* VNet Peering
* Linux VM Administration
* Cloud Infrastructure Deployment


