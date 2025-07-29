variable "rg_name_child" {

}

# variable "location_child" {
  
# }
resource "azurerm_resource_group" "rg-16-05-25" {
    for_each = tomap(var.rg_name_child)
    name = each.key
    location = each.value.location
    # tags = {
    #     environment = "test"
    #     created_by = "Umar on 16-05-25"
    # }
  
}