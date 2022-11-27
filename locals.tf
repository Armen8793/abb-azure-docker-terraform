locals {
  env_variables = {
    DOCKER_REGISTRY_SERVER_URL      = var.docker_reg_url
    DOCKER_REGISTRY_SERVER_USERNAME = var.docker_login
    DOCKER_REGISTRY_SERVER_PASSWORD = var.docker_pwd
  }
}