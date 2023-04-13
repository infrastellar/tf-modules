variable "secret" {
  type = string
}

variable "tier" {
  type    = string
  default = "production"
}

variable "tags" {
  type    = map(any)
  default = {}
}

locals {
  name            = lower(secret)
  recovery_window = var.tier != "development" ? 30 : 0
}
