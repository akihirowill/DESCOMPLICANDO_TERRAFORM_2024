variable "name" {
  type        = string
  description = "Nome do projeto"
}

variable "environment" {
  type        = string
  description = "Nome do projeto (ex. dev, prod)"
  default     = "dev"
}

variable "ssh_key_name" {
  type        = string
  description = "Nome da chave SSH"
  default     = "william"
}

variable "machine_type" {
  type        = string
  description = "Nome do tipo da instancia"
  default     = "cloud-bs1.xsmall"
}

variable "associate_public_ip" {
  type        = bool
  description = "Habilitar ou não o IP público"
  default     = false
}

variable "db_password" {
  type        = string
  sensitive   = true
  description = "Senha para o banco de dados"
}

variable "db_user" {
  type        = string
  description = "Usuário para o banco de dados"
}
