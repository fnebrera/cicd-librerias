#
# Definicion de recursos a crear/destruir
#

# Creamos un vhd, copiando un disco semilla que tiene ya instalado alpine, docker, bash, etc.
resource "hyperv_vhd" "test-hyperv-vhd" {
  path     = var.HYPERV_VHD_PATH
  source   = var.HYPERV_SEED_DISK
}


# En este caso, ya tenemos un switch external, y no podemos crear otro sobre la misma interfaz.
# Este seria un ejemplo de crear un network switch nuevo:
#resource "hyperv_network_switch" "test-hyperv-nsw" {
#  name                = var.HYPERV_NSW_NAME
#  notes               = "Switch de prueba para terraform"
#  allow_management_os = true
#  switch_type         = "External"
#  net_adapter_names   = ["Ethernet"]
#}

# Creamos virtual machine
resource "hyperv_machine_instance" "test-hyperv" {
  name                 = var.VM_NAME
  generation           = 1
  dynamic_memory       = true
  memory_startup_bytes = 1073741824
  memory_minimum_bytes = 1073741824
  memory_maximum_bytes = 2147483648
  processor_count      = 1
  checkpoint_type      = "Disabled"
  state                = "Running"
  wait_for_ips_poll_period = 5
  wait_for_ips_timeout = 120

  network_adaptors {
    name        	= "eth0"
    switch_name 	= var.HYPERV_NSW_NAME
    wait_for_ips 	= true
  }

  hard_disk_drives {
    path                = var.HYPERV_VHD_PATH
    controller_type     = "Ide"
    controller_number   = "0"
    controller_location = "0"
  }

  #
  # Hay un bug en el provider de Hyper-V. Si no le definimos todo esto (con los valores por defecto)
  # cree que tiene que actualizar la VM, aunque realmente no tendría que hacer nada.
  # Todavia no he encontrado el modo de resolver el mismo problemilla con el VHD, aunque esto me prepcupa menos.
  # 
  vm_processor {
    compatibility_for_migration_enabled               = false
    compatibility_for_older_operating_systems_enabled = false
    enable_host_resource_protection                   = false
    expose_virtualization_extensions                  = false
    hw_thread_count_per_core                          = 0
    maximum                                           = 100
    maximum_count_per_numa_node                       = 4
    maximum_count_per_numa_socket                     = 1
    relative_weight                                   = 100
    reserve                                           = 0
  }
  
  # Esto parece funcionar para el destroy
  depends_on = [hyperv_vhd.test-hyperv-vhd]
}
