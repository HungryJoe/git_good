# What is a Commit?
## Lecture
* Commits are the fundamental unit of a repository
    * Nodes in the graph
    * Snapshots of working tree's history
    * Pointers to filesystem-like trees plus references to parent commits

### Git Objects
* Only three kinds of objects in Git: commits, trees, and blobs
* Every object is addressed (and uniquely identified) by a hash
* Each is stored in `.git/objects/<hash[0:2]>/<hash[2:39]>`

#### Commits
Commits each point to a single tree
* Each represents a snapshot of the working tree's history
* Metadata: commit author, commit committer, message

#### Trees
Trees are trees of blobs
* Each represents a directory in the working tree
* Metadata: name and permissions of each node (including blobs)

#### Blobs
Blobs are content
* Each represents a particular version of a file
* Metadata: size

#### Teaser for next time
* Branches are references to commits
* Branches move to include new commits when they're checked out
* `HEAD` points to the currently checked-out branch

## Lab/Homework
Make a repository with a few commits using only low-level (plumbing) Git commands. Adapted from [the Git Book, section 10.2](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects).

### Viewing tools
The following are suggestions for viewing the Repository's state throughout the procedure below.
* **List all objects in the repository:** `find .git/objects -type f`
    * Objects are listed as files with names corresponding to their hashes
* **View the contents of an object:** `git cat-file -p <object-hash>`
    * For **blobs**, prints its contents
    * For **trees**, lists its child objects with name, type, and hash
    * For **commits**, lists its tree, message, author, and committer 
* **See a diagram of all objects:** `python /path/to/git-graph.py /path/to/lab_1_2_repo`
* **View the type of an object:** `git cat-file -t <object-hash>`

### Procedure
1. Initialize repo
    1. `git init lab_1_2_repo`
    1. `cd lab_1_2_repo/`
    1. Use `find .git/objects` to see that it only has a couple of empty directories
1. Create a blob from stdin (rather than a file like you normally would)
    1. `echo 'test content' | git hash-object -w --stdin`
1. Create a couple of blobs from different versions of a file
    1. `echo 'version 1' > test.txt`
    1. `git hash-object -w test.txt`
    1. `echo 'version 2' > test.txt`
    1. `git hash-object -w test.txt`
    1. Try recovering both versions of the file `test.txt` from Git using `git cat-file`:
        1. `rm test.txt`
        1. `git cat-file -p 83baae61804e65cc73a7201a7252750c76066a30 > test.txt` should give you "version 1" in the file
        1. `git cat-file -p 1f7a7a472abf3dd9643fd615f6da379c4acb3e3a > test.txt` should give you "version 2" in the file
            * **NB:** I know the hashes of these blobs because *depend only on the blob's contents*.
