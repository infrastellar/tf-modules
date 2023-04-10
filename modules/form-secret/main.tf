resource "aws_secretsmanager_secret" "secret" {
  name                    = local.name
  recovery_window_in_days = local.recovery_window
  tags                    = var.tags
}

# Don't manage values in Terraform but instead setup the structure for the
# environment for someone to add the values manually. This is to avoid shared
# secrets or sensitive data being in git.
resource "aws_secretsmanager_secret_version" "values" {
  secret_id     = aws_secretsmanager_secret.secret.arn
  secret_string = jsonencode("")
}
