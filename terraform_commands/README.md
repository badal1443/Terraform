# Terraform Commands

This document records key Terraform commands with examples. Commands are listed step by step for reference.

## 1. `terraform init`
Initializes a Terraform working directory by downloading providers, modules, and setting up the backend.

**Example:**
```
terraform init
```

## 2. `terraform plan`
Creates an execution plan showing what actions Terraform will take to reach the desired state.

**Example:**
```
terraform plan
```

## 3. `terraform apply`
Applies the changes required to reach the desired state of the configuration.

**Example:**
```
terraform apply
```

## 4. `terraform show`
Shows the current state or a saved plan in a human-readable format.

**Example:**
```
terraform show
```

## 5. `terraform validate`
Validates the configuration files in the directory.

**Example:**
```
terraform validate
```

## 6. `terraform fmt`
Rewrites Terraform configuration files to a canonical format and style.

**Example:**
```
terraform fmt
```

## 7. `terraform providers`
Displays information about the providers used in the current configuration, including their versions and sources.

**Example:**
```
terraform providers
```

## 8. `terraform providers mirror`
Mirrors a provider registry to a local directory for offline use or custom registries.

**Example:**
```
terraform providers mirror -platform=linux_amd64 /path/to/mirror/directory
```

## 9. `terraform output`
Displays the output values defined in the Terraform configuration from the current state.

**Example:**
```
terraform output
```

More commands will be added later.