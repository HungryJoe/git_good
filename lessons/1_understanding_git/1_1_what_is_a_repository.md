# Intro / What is a Repository?
## Lecture
* What is this course?
    * Go over the Course Overview (this document)
* The three states
    * Working tree/working directory
        * **Location:** everywhere in your directory, except for `.git/`
        * **Associated action:** *Editing* files happens here
    * Staging Area
        * Also known as the "index"
        * The middleman
        * Lets you prepare your next commit
        * **Location:** `.git/index` (binary file)
        * **Associated action:** *Staging* a modified file adds it here
    * Repository
        * A graph of commits
        * Represents an append-only filesystem of the working tree's history
            * Commits are snapshots of the working tree
        * **Location:** `.git/objects` plus various other parts of `.git/`
        * **Associated action:** *Committing* adds all staged files here

## Lab/Homework
* Discuss how to structure lab portion of each meeting
* Discuss how often we want to meet
* Individually:
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
