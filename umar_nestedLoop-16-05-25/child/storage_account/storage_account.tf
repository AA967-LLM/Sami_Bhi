variable "SA_name_child" {
  
}

resource "azurerm_storage_account" "SA-16-05-25" {
  for_each = tomap(var.SA_name_child)
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  account_tier = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  tags = {
    environment = "test"
    created_by   = "Umar on 16-05-25"
  }
  
}