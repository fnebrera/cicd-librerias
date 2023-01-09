#
# Variables de entorno procedentes de nuestros pipelines.
# En el entorno, el nombre debe empezar con "TF_VAR_" seguido del nombre de la variable.
#
variable "HYPERVISOR_USER" {
    description     = "Usuario para conectar al servidor  hyper-v"
    type            = string
    default         = "Administrador"
}

variable "HYPERVISOR_PASSWD" {
    description     = "Password del usuario para conectar al servidor  hyper-v"
    type            = string
    sensitive       = true
    default         = "Lagasca.67"
}

#
# Variables que hemos definido en el archivo "terraform.tfvars"
#
variable "HYPERV_HOST" {
    description     = "Ip del servidor hyper-v"
    type            = string
   default         = "192.168.1.29"
}

variable "HYPERV_SEED_DISK" {
    description     = "Path del disco vhd empleado como semilla"
    type            = string
}

variable "HYPERV_VHD_PATH" {
    description     = "Path del disco vhd que se creara para la maquina virtual"
    type            = string
}

variable "HYPERV_NSW_NAME" {
    description     = "Nombre del switch virtual a crear/emplear"
    type            = string
}

variable "VM_NAME" {
    description     = "Nombre de la maquina virtual a crear/emplear"
    type            = string
}
