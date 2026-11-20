resource "aws_s3_bucket" "este" {
    bucket = var.nombre_bucket
    tags = { Enviroment = var.entorno, ManagedBy = "Terraform"}
}

resource "aws_s3_bucket_versioning" "este" {
    count = var.activar_versionado ? 1 : 0
    bucket = aws_s3_bucket.este.id
    versioning_configuration {
      status = "Enabled"
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "este" {
    count = var.activar_cifrado ? 1 : 0
    bucket = aws_s3_bucket.este.id
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
}