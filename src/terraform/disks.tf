resource "azurerm_managed_disk" "data_disk" {
  name                 = "data-disk-001"
  location             = azurerm_resource_group.tamops.location
  resource_group_name  = azurerm_resource_group.tamops.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 20
}

resource "azurerm_virtual_machine_data_disk_attachment" "Vm_data_disk_attach" {
  managed_disk_id    = azurerm_managed_disk.data_disk.id
  virtual_machine_id = azurerm_windows_virtual_machine.vm1.id
  lun                = "10"
  caching            = "ReadWrite"

  depends_on = [ 
    azurerm_managed_disk.data_disk 
    ]
}