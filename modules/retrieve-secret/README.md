# retrieve-secret

This module is used to retrieve a secret from AWS Secrets Manager.

This module works in connection with `form-secret`.

## Usage

```
module "postgres_secrets" {
  source = "./modules/retrieve-secret"

  namespace = format("%s/secrets/infra", var.env)
  secret    = "postgres"
}
```

This will allow one to use the secrets like so:

```
module.postgres_secrets.arn
module.postgres_secrets.values["<key>"]
```
