# Terraform

Object types required to write HCL.

1. Providers
2. Resources to create, associated with a provider.
3. Data sources are way to query info from provider.

-----

HCL uses Block Syntex

block_type "label" "name_label" {
  key="value"
  nested_block{}


-------------

# Example AWS and Azure resource template

## Objec reference in terraform config file.

resource.name.attr

---------

## Terraform workflow to create, update and remove infrastructure:

> Terraform init

(looks for config file, and see if it needs any provider plugin from registry), also creates state backend data ready. Creates state data file in current dir untless specified otherwise.)
> Terraform plan [-out <filename.tfplan>]

( checks config file and compare with current state data and find the diff between two and make a plan to update infrastructure).
> Terraform apply [<filename.tfplan>]

Applies the changes as per the last command .
> Terraform destroy ** Use caution

destroys the infrascture provisioned based of a state data.

** Note: **
If terraform apply command is not supplied with *.tfplan file , it will print out plan on console and ask for confrirmation, then run it.
Otherwise it assumes we have validated plan already and just runs the plan and create the infra
