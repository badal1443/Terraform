# Terraform Variable Precedence

This example shows how Terraform chooses variable values when the variable is defined without a default in `variables.tf`.

## Precedence Order

Terraform selects a variable value in this order, from highest precedence to lowest:

1. `terraform apply -var='filename=/root/terraform'`
2. Environment variable: `TF_VAR_filename="/root/terraform"`
3. `*.auto.tfvars` files, for example `filename.auto.tfvars`
4. `*.tfvars` files, for example `filename.tfvars`
5. `variables.tf` variable declaration without a default value (only the variable definition exists)

> Note: If `variables.tf` does not provide a default value, Terraform requires the variable to be set by one of the higher-precedence sources.

## Example Files

### `variables.tf`

```hcl
variable "filename" {
  description = "Path to the Terraform file or directory"
  type        = string
}
```

Because there is no `default` block here, `filename` must be provided by another source.

### `main.tf`

```hcl
terraform {
  required_version = ">= 1.0"
}

provider "local" {
}

resource "local_file" "example" {
  filename = var.filename
  content  = "This file path comes from Terraform variable precedence."
}
```

### `filename.auto.tfvars`

```hcl
filename = "/root/terraform"
```

## How to Override Values

- Use Terraform CLI `-var` to override everything else:
  - `terraform apply -var='filename=/root/terraform'`
- Use environment variable if you want to avoid passing `-var`:
  - `export TF_VAR_filename="/root/terraform"`
- Use an auto-loaded `.auto.tfvars` file for project-specific defaults:
  - `filename.auto.tfvars`

## Practical Notes

- `variables.tf` defines the variable and type, but without `default` it does not provide a value.
- `filename.auto.tfvars` is loaded automatically when you run `terraform plan` or `terraform apply`.
- `filename.tfvars` (if not named `terraform.tfvars`) requires specifying the file during `terraform apply`, e.g., `terraform apply -var-file filename.tfvars`
- `TF_VAR_...` environment variables are useful for CI/CD or shell-based overrides.
- The CLI `-var` option is the most explicit and highest-precedence source.
