# HCL stands for Hashicorp configuration language
# Consists of blocks and arguments

resource "local_file" "first_text_file"{
    filename=var.filename
    content=var.file-content["statement1"]
    file_permission="0700"
}

resource "random_pet" "myPet"{
    length=1
    prefix=var.prefix[0]
    separator="."

}
