variable "region" {
  description = "Define a region da instancia onde sera deployada"
  default     = "us-east-1"
}

variable "name" {
  description = "Define o nome da aplicação"
  default     = "WebServer"
}

variable "env" {
  description = "Define o ambiente da aplicação"
  default     = "Development"
}

variable "instance_type" {
  description = "Define a configuranção de hardware da instancia"
  default     = "t2.micro"
}

variable "repo" {
  description = "Define o repositorio da aplicação"
  default     = "https://github.com/RodrigooSales/desafio"
}