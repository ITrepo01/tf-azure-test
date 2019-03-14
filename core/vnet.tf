module "network" {
  source = "Azure/network/azurerm"
  vnet_name = "${var.vnet_name}"
  resource_group_name = "${var.resource_group_name}"
  location = "${var.location}"
  address_space = "${var.address_space}"
  subnet_prefixes = ["${var.subnet_prefixes}"  ]
  subnet_names = ["${var.subnet_names}"]

  tags = "${merge(local.required_tags, var.tags)}"
  
}
