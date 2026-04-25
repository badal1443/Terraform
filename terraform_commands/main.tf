resource "local_file" "commands_example" {
    filename = "${path.cwd}/commands_output.txt"
    content = "Learn all basic commands of terraform and become a pro in terraform "
}

resource "null_resource" "example" {
    provisioner "local-exec" {
        command = "echo 'This is a null resource example' > ${path.cwd}/null_resource_output.txt"
    }
}   

resource "random_pet" "my_pet" {
    prefix="Mr"
    length=1
    
}