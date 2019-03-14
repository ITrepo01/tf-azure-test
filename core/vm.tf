resource "azurerm_storage_account" "vm-sa" {
  count = "${var.boot_diag == "true" ? 1 : 0 }"
  name = "bootdiag${lower(random_id.vm-rid.hex)}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  location = "${var.location}"
  account_tier             = "${element(split("_", var.boot_diagnostics_sa_type),0)}"
  account_replication_type = "${element(split("_", var.boot_diagnostics_sa_type),1)}"

  tags = "${merge(local.required_tags, var.tags)}"
  
}
