variable "nombre_bucket" {
    description = "Nombre único del bucket s3"
    type = string
}

variable "entorno" {
  description = "Entorno: dev, staging o prod"
  type = string
}

variable "activar_versionado" {
  description = "Activar el versionado del bucket"
  type = bool
  default = false
}

variable "activar_cifrado" {
    description = "Activar cifrado SSE-S3"
    type = bool
    default = true
}