/*
Explores the random provider with mutiple resources.
Follow this documentation
https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet
*/

resource "random_pet" "mypet"{
    prefix="Mr"
    separator="."
    length=1
}