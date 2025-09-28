//First run local file provider to create a file.
resource "local_file" "mynewfile" {
    filename = "./mycontentfiles/requirements.txt"
    content  = "This is my first file created using local file provider"
}

resource "local_file" "myotherfile" {
    filename = "./mycontentfiles/secondfile.txt"
    content  = "This is my second file created using local file provider"
    depends_on = [ local_file.myfile ]
}