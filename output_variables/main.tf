resource "random_string" "mystring"{

    length = 16
    special = true
}

output "mystring_output" {
    value = "${random_string.mystring.result}"
}