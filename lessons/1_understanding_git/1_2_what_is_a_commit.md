# What is a Commit?
## Lecture
* Commits are the fundamental unit of a repository
    * Nodes in the graph
    * Snapshots of history
    * Pointers to filesystem trees plus references to parent commits
        * Trees are like your working tree, but made of blobs instead of files
        * Blobs are just content, no metadata (i.e. mtime, ctime, name, permissions)
            * Trees own the metadata because different trees may associate different metadata with different blobs
        * Trees give you content addressibility

## Lab/Homework
