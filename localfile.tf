## This configuration file works with local file system and makes changes as needed.
/*

In this file I will demonstrate how can I simply make changes to unix file system , 
and not break the changes.
The changes will be idempotent.

*/

resource "local_file" "myfile"{
    filename="./mycontentfiles/first"
    content="This is my first file created and maintained by terraform"
}

resource "local_sensitive_file" "otherfile"{
    filename="./mycontentfiles/second"
    content="This is sensitive data, should not be visible"
}