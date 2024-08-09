variable "nome" {
  type        = string
  description = "Nome da instancia"
}

variable "enviroment" {
  type        = string
  description = "Ambiente da instancia"
  default = "dev"
}