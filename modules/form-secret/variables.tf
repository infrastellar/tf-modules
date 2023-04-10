variable "namespace" {
  type = string
}

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
  namespec        = "%s/%s"
  name            = format(local.namespec, lower(var.namespace), lower(var.secret))
  recovery_window = var.tier != "development" ? 30 : 0
}
