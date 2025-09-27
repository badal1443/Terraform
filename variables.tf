variable "filename"{
    description = "File name passed to terraform config file for local provider"
    type = string
    default = "./mycontentfiles/first"
}

variable "content"{
    default = "This is my first file created and maintained by terraform"
}

variable "sensitive_fileName"{
    description = "Sensitive variable file path"
    type= string
    default = "./mycontentfiles/second"
}


variable "sensitive_content"{
    description = "Secret content"
    type = string
    default = "This is my second file created and maintained by terraform"
}