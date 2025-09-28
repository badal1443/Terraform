resource "time_static" "time_update" {
}

// This configuration file works with local file system and makes changes as needed.
// The changes will be idempotent.  
// explains iterpolation of time provider with local file provider.
resource "local_file" "time"{
    filename = "./mycontentfiles/time.txt"
    content="Time stamp of this file is ${time_static.time_update.id}"
}

//use command terraform state to see the state of the resources.
// use command terraform taint to force recreation of the resource.

# This output block displays the file name and its associated timestamp.
# It combines the local_file and time_static resource IDs to provide a summary
# of the file created and the time it was generated.
output "timestamp"{
    value = "The file ${local_file.time.id} has timestamp ${time_static.time_update.id}"
    description="Outputs the timestamp of the file created"
}