# variable "location_father" {
#   type = string

# }
variable "rg_name_father" {
  type = map(any)
}
variable "SA_name_father" {
    type = map(any)
  
}


#testing 2nd line addition after creating a branch 
#lines removed please confirm

module "rg_name" {
    source = "../child/resource_group"
    rg_name_child = var.rg_name_father

}
module "SA_name" {
     depends_on = [ module.rg_name ]
    source = "../child/storage_account"
    SA_name_child = var.SA_name_father
}