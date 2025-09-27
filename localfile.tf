## This configuration file works with local file system and makes changes as needed.
/*

In this file I will demonstrate how can I simply make changes to unix file system , 
and not break the changes.
The changes will be idempotent.

*/

resource "local_file" "myfile"{
    filename=var.filename
    content=var.content
}

resource "local_sensitive_file" "otherfile"{
    filename=var.sensitive_fileName
    content=var.sensitive_content
}