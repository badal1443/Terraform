resource "local_file" "example" {
  filename = "./example.txt"
  content  = "This is an example file."

  depends_on = [random_pet.mypet] //explicit dependency on random_pet resource
}

resource "local_file" "example2" {
  filename = "./example2.txt"
  content  = "This is another example file with an implicit dependency on random_pet resource. ${random_pet.mypet.id}" //implicit dependency on random_pet

}

resource "random_pet" "mypet" {
  length    = 8
  separator = "-"
  prefix    = "Mr"
}