###############To be remove later
variable "azurerm_client_id" {
  description = "Access key for Azure"
}
variable "azurerm_client_secret" {
  description = "Secret Key for Azure"
}
variable "azurerm_subscription_id" {
  description = "Subscription ID; get from Console .."
}
variable "azurerm_tenant_id" {
  description = "Tenant ID; from EndPoint in classic panel .."
}
####################################################################
variable "resource_group_name" {
  default = "azure-test"
}
variable "location" {
  default = "West US"
}
variable "env" {
  default = "dev"
}
variable "owner" {
  default = "masoud"
}
variable "tags" {
  description = "Common Tags To be Applied to all Resources in template"
  default = {}
}
variable "vnet_name" {
  default = "azure-test_vnet"
}
variable "address_space" {
  description = "Address space for Vnet"
  default     = "192.168.18.0/24"
}

variable "subnet_prefixes" {
  description = "subnets within the address space"
  default     = "192.168.18.0/25"
}

variable "subnet_names" {
  description = "name of subnets"
  default     = "azure-test_subnet1"
}


variable "vm_hostname" {
  default ="masoud-vm-test"
}

variable "vm_os_simple" {
  default = ""
}

# Definition of the standard OS with "SimpleName" = "publisher,offer,sku"
variable "standard_os" {
  default = {
    "UbuntuServer"  = "Canonical,UbuntuServer,16.04-LTS"
    "WindowsServer" = "MicrosoftWindowsServer,WindowsServer,2016-Datacenter"
    "RHEL"          = "RedHat,RHEL,7.3"
    "openSUSE-Leap" = "SUSE,openSUSE-Leap,42.2"
    "CentOS"        = "OpenLogic,CentOS,7.3"
    "Debian"        = "credativ,Debian,8"
    "CoreOS"        = "CoreOS,CoreOS,Stable"
    "SLES"          = "SUSE,SLES,12-SP2"
  }
}


variable "boot_diag" {
  description = "(optional) Enable or Disable boot Diag"
  default = "false"
}
variable "boot_diagnostics_sa_type" {
  description = "(Optional) Storage account type for boot diagnostics"
  default     = "Standard_LRS"
}