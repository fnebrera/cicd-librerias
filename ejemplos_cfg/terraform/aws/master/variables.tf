#
# Variables de entorno definidas en el proyecto CI/CD.
# En gitlab, el nombre debe empezar con "TF_VAR_" seguido del nombre de la variable.
#
variable "HYPERVISOR_USER" {
    description     = "Clave IAM para conectar a la cuenta AWS"
    sensitive       = true
    type            = string
}

variable "HYPERVISOR_PASSWD" {
    description     = "Secret IAM para conectar a la cuenta AWS"
    type            = string
    sensitive       = true
}

#
# A partir de aqui son variables locales, definidas en terraform.tfvars
#
variable "AWS_REGION" {
    description     = "Region donde queremos crear la instancia"
    type            = string
}

variable "AWS_AMI" {
    description     = "Id del AMI que usamos como semilla"
    type            = string
}

variable "AWS_INSTANCE_TYPE" {
    description     = "Tipo de instancia"
    type            = string
}

variable "AWS_VM_NAME" {
    description     = "Nombre de la maquina virtual a crear/emplear"
    type            = string
}

variable "AWS_VOLUME_SIZE" {
    description     = "Tamano en Gigas del volumen raiz"
    type            = number
}
