// Default variable type (any as default type, string, number, bool)
// Other variable types are (list, map, set, objects, tuple)

variable "filename"{
    //default="./first_file.txt"
}

variable "prefix"{
    type=list(string)
    default=["Mr","Mrs","Ms"]
}

variable "food-items"{
    type=set(string)
    default=["Apple","Banana","Pear"]
}

variable "file-content"{
    type=map(string)
    default={
        "statement1"="Hello to the file1"
        "statement2"="Hi file1"
    }
}

variable "my-pet"{
    type=object({
        name=string
        food=list(string)
        isFavorite=bool
        age=number
        color=string
    })
    default={
        name="Mario"
        age=7
        color="black"
        isFavorite=true
        food=["Chicken","Fish"]
    }
}

variable "compressed-pet-info"{
    type=tuple([string,number,bool])
    default=["Bruno",7,true]
}
