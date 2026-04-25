resource "local_file" "my_pet_info" {
    filename = var.filename
    content = "My pet's name is ${random_pet.my_pet.id}"
    
}

resource "random_pet" "my_pet" {
    length = 2
    prefix = "Mr."
    separator = "-"

}