# Resource Attribute Exercise

## What I Learned

In this exercise, I explored **resource attributes** and **interpolation sequences** in Terraform.

### Resource Attributes
Resource attributes are the properties or outputs of a Terraform resource. For example, the `random_pet` resource generates a random pet name, and its `id` attribute contains the generated name.

### Interpolation Sequences
Interpolation sequences allow you to reference resource attributes in strings using the `${}` syntax. This is useful for dynamically inserting values into configurations.

### Example: Random Pet
In the `main.tf` file:
- We define a `random_pet` resource with:
  - `length = 2` (number of words)
  - `prefix = "Mr."`
  - `separator = "-"`
- We use its `id` attribute in a `local_file` resource via interpolation: `"My pet's name is ${random_pet.my_pet.id}"`

This creates a local file containing a message with the randomly generated pet name.

### Running the Exercise
1. Initialize: `terraform init`
2. Plan: `terraform plan`
3. Apply: `terraform apply`
4. Check the generated file specified in `var.filename` (from variables.tf or terraform.auto.tfvars)