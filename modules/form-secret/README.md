# form-secret

This module is used to carve out a secret in AWS Secrets Manager. The idea is
to use this module to create a secret scaffold and then manually upload the
secret using the AWS CLI.

This module works in connection with `retrieve-secret`.

## Usage

```
module "postgres" {
  source = "./modules/form-secret"

  namespace = format("%s/secrets/infra", var.env)
  secret    = "postgres"
  tags      = local.tags
}
```

This will create an empty secret in Secrets Manager at:
`<env>/secrets/infra/postgres`
