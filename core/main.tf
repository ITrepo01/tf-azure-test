# Remove this calause after testing ... 
provider "azurerm" {
 subscription_id 	= "${var.azurerm_subscription_id}"
  client_id 		= "${var.azurerm_client_id}"
  client_secret 	= "${var.azurerm_client_secret}"
  tenant_id 		= "${var.azurerm_tenant_id}"
}

provider "random" {
  
}
resource "random_id" "vm-rid" {
  keepers = {
    vm_hostname = "${var.vm_hostname}"
  }

  byte_length = 8
}


locals {
  required_tags = {
    "environment" = "${var.env}"
    "owner" = "${var.owner}"
    
    
  }

  location_code ={
    australiasoutheast = "ce"
    
  }
}

