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


--------------

## Input Output variables
### Input variables
varibale block

variable "name" {...}

example:

variable "my_var"{
type = list(string)
description = "some description"
default = ["us-west-2","us-east-1"]
sensitive = 
}

#### Data types in HCL
** Primitive
- string
- number
- boolean

** Collection
- List (ordered) ["str_1","str_2","str_3"]
- Set (unordered)
- map (key-value pairs) {name="aws",region="us-east-1",vpc="ID"}

** Structural (group of mixed data primitive types)
- Tuple same as List ["str_1",123,"str_3"]
- object same as map

Using variable/referencing
create a separate file variables.tf



and this file an have each variable looking something like
'''   variable "aws_region"{
    type = string
    description = "AWS region available."
    default = "us-east-1"
}'''
##### using variables within config file:
var.my_var[0]

var_my_var   

var.my_var["name"] or var.my_var.name : map

### local values
create locals.tf file where we can operate on varaible and other values to cre

### output


### submitting values of variables to config files

- deafualt value
- -var name=value
- -var-file fileName
- If file in same directory named as terraform.tfvars or terraform.tfvars.json and have values in json format.
- If file in same directory named as .auto.tfvars or .auto.tfvars.json and have values in json format.
- environment variables, starting with TF_VAR_var_name 

Order of precendence

TF_VAR_envvar < .tfvars or tfvars.json <.auto.tfvars or .auto.tfvars.json <-var-file <-var <command prompt supplied value

#### New section  
