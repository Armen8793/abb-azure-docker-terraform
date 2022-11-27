variable "location" {
  description = "where is located my service data centre"
  default     = "eastus"
}

variable "tier" {
  description = "tier type"
  default     = "Standart"
}


variable "os" {
  description = "operation system we need"
  default     = "Linux"
}

variable "size" {
  description = "size of my service kind"
  default     = "S1"
}


variable "docker_reg_url" {
  description = "my docker image url"
  type = string
  default = "https://hub.docker.com/repository/docker/armen8793/abbtask"
}

variable "docker_login" {
  description = "my docker registry username"
  type = string
}

variable "docker_pwd" {
  description = "my docker registry password"
  type     = string
}



