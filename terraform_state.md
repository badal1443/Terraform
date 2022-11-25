# Terraform state related commands and info.

#### List all state resources
> terraform state list

#### Show a specific resource
> terraform state show resource_address

#### move an item to different address in same state file. renaming or movin between modules.
> terraform state mv source_name dest_name

#### Remove resource
> terraform state rm name


** Note: To remove a resource from terraform configs/management update config file first then update state data with terraform state command. 
Otherwaise next run/apply will cause the resource to be destroyed. Manage all resources through terraform not with aws console or manually in state file.
