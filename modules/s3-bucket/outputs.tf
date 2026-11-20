output "bucket_id" {
    description = "ID del bucket creado"
    value = aws_s3_bucket.este.id
}

output "bucket_arn" {
    description = "ARN del bucket"
    value = aws_s3_bucket.este.arn
}

output "bucket_domain" {
    description = "Dominio regional del bucket"
    value = aws_s3_bucket.este.bucket_regional_domain_name
}