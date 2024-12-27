resource "azurerm_windows_virtual_machine" "vm1" {
  name                = "${var.prefix}-test-vm1"
  resource_group_name = azurerm_resource_group.tamops.name
  location            = azurerm_resource_group.tamops.location
  size                = "Standard_B2ms"
  admin_username      = "veera1629"
  admin_password      = var.windows_admin_password
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}