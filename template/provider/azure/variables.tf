variable "location" {
  type    = string
  default = "{{config.get_value('azure', 'az_location', 'westeurope')}}"
}

# default jumpbox size : 2cpu / 4GB (jumpbox only, lab VMs use per-VM size)
variable "jumpbox_size" {
  type    = string
  default = "Standard_B2s"
}

variable "username" {
  type    = string
  default = "goadmin"
}

variable "password" {
  description = "Password of the windows virtual machine admin user"
  type    = string
  default = "goadmin"
}

variable "jumpbox_username" {
  type    = string
  default = "goad"
}

variable "custom_script_handler_version" {
  description = "Version of the Azure CustomScriptExtension handler"
  type        = string
  default     = "1.9"
}
