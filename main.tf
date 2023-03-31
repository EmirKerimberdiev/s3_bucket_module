resource "aws_s3_bucket" "bucket_emir" {
  bucket = var.bucket_name

  lifecycle_rule {
    id      = "expire_after_30_days"
    enabled = true

    expiration {
      days = 30
    }
  }

  tags = {
    Environment = "Production"
  }
}
