resource "aws_kms_key" "this" {
  description             = "Symmetric encryption KMS key"
  enable_key_rotation     = var.enable_key_rotation
  deletion_window_in_days = var.deletion_window_in_days
}

resource "aws_kms_alias" "this" {
  name          = "alias/my-key-alias"
  target_key_id = aws_kms_key.a.key_id
}