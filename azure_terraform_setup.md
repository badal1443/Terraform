# Creating terraform code for setting up azure resources.

## [Setup guide](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret)  is here.

steps:
- 1 . Azure account.
- 2 . create service principal in azure AD.
- 3 . setup env variable with client ID/App ID, Client Secrete/Password and tenant ID.
- 4 . Create terraform code files (<file_name>.tf, variables.tf,locals.tf,outputs.tf etc.)
- 5 . Run terraform init, terraform plan and terraform apply to create infrastructure.
