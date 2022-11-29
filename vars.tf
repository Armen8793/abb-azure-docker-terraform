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


variable "DOCKER_REGISTRY_SERVER_URL" {
  type        = string
  description = "my docker registry server url"
}

variable "DOCKER_REGISTRY_SERVER_USERNAME" {
  type        = string
  description = "my docker registry username"

}

variable "DOCKER_REGISTRY_SERVER_PASSWORD" {
  type        = string
  description = "my docker registry password"

}


variable "tenant" {
  type        = string
  description = "my resource group directory id"

}

