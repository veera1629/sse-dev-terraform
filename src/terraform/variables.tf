variable "prefix" {
    type = string
    description = "prefix of the vnet"
}

variable "windows_admin_password" {
    type = string
    sensitive = true
    description = "The password of the windows virtual machine"
}