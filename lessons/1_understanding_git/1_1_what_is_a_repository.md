# Intro / What is a Repository?
## Lecture
### What is this course?
* Go over the Course Overview (this document)

### The triple meaning of "repository"
#### History in Git plus working copy/directory/tree
* `Git_Good/`
* For our purposes, this comprises:
    * Working Directory
    * Staging Area
    * Repository

#### History in Git plus everything else Git-related for a given project
* `.git/`
* For our purposes, this comprises:
    * Staging Area
    * Repository

#### History in Git
* `.git/objects`, `.git/refs`, `.git/*HEAD`
* For our purposes, this comprises:
    * Repository

### The three states
#### Working Directory
* Also known as the *Working Tree*
* Contains files you normally edit via tools that aren't Git
    * The other two states' files you typically edit only via Git
* Place to experiment, figure out what you might want to add to your Repository
* **Location:** everywhere in your directory, except for `.git/`
* **Associated action:** *Editing* happens here

#### Staging Area
* Also known as the *Index*
* Place where you prepare the next commit to your Repository
* **Location:** `.git/index` (binary file)
* **Associated action:** *Staging* a modified file adds it here
    * We call a file *modified* when its contents differ between the `HEAD` of the Repository and the Working Directory

#### Repository
* A graph of commits
    * Commits are snapshots of the Working Directory
* Place where you store and edit your Working Directory's history
* **Location:** `.git/objects`, `.git/refs`, `.git/*HEAD`
* **Associated action:** *Committing* adds all files in the Staging Area to a new commit here

## Lab/Homework
### As a Group
* Discuss how to structure lab portion of each meeting
* Discuss how often we want to meet

### Individually
* Install `gitui` and `git-graph`
* Create repository for class
* View the three states via `gitui`
    * Make a new file
    * Add it to the staging area
    * Commit it
* View graph of history via `git-graph`
    * Make another commit
    * Make a *branch* from the first commit, and commit there
    * Merge the branch back into the starting branch
