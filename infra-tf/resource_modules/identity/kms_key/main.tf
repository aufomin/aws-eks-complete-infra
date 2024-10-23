resource "aws_kms_key" "this" {
  description             = var.description
  enable_key_rotation     = var.enable_key_rotation
  deletion_window_in_days = var.deletion_window_in_days
  policy                  = var.policy
  tags                    = var.tags
}

resource "aws_kms_alias" "this" {
  name          = var.name
  target_key_id = aws_kms_key.a.key_id
}