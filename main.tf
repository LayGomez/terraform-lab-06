module "bucket_logs" {
    source = "./modules/s3-bucket"

    nombre_bucket = "mi-empresa-layla-logs-${var.entorno}"
    entorno = var.entorno
    activar_versionado = false
    activar_cifrado = true
}

module "bucket_datos" {
    source = "./modules/s3-bucket"

    nombre_bucket = "mi-empresa.layla-datos-${var.entorno}"
    entorno = var.entorno
    activar_versionado = true
    activar_cifrado = true
}

output "logs_arn" {
  value = module.bucket_logs.bucket_arn
}

output "datos_dominio" {
    value = module.bucket_datos.bucket_domain
}