# Git Good Annotated Bibliography
## Think like a Git
* [link](https://think-like-a-git.net)
* Explains Git repositories as graphs
    * Commits are nodes
        * pointers to code and some other commits (parents)
    * Branches/tags are references to commits
        * Tags are branches that don't update when you make a new commit with them checked out
* Explains branching in terms of the "reachability" of commits
    * References make history reachable/are defined by the portion of the repo that they can reach
    * Garbage collection removes unreachable commits
* Makes heavy use of GitX to visualize repos
* Outlines a couple ways of playing with Git to understand branching better
* Explains rebasing as a chain of cherry-picks


## Git from the Bottom Up 
* [link](https://jwiegley.github.io/git-from-the-bottom-up)
* Much more thorough than TlaG
* Starts with blobs instead of commits
* Nice glossary in Intro
    * Covers WT, Index, and Repo briefly
* Emphasizes simplicity of Git -- fundamentally only a few pieces joined in only a few possible relationships

### A repository is like a write-only filesystem (Section 1: Repository)
* Only commits, blobs, and trees (See also [this page in the Git book](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell))
    * Commits are trees plus parent references
    * Trees are trees of blobs plus some metadata about them (names, permissions, etc?)
    * Blobs are containers for the contents of a particular file
    * Emphasizes content-addressing with blobs & trees
        * Uses different methods to create them from different files with the same contents and shows the hashes are the same
    * Branches/tags are references to commits
* Explains a merge commit as a "'meta-commit', because its contents are related to work done solely in the repository, and not to new work done in the working tree." (1.7: Branching and the Power of Rebase).
    * Rebase lets you avoid these by rewriting the commits on the target branch.
        * Rewriting is needed because the parent of the base of the branch changes (from the common ancestor to the head of the source branch).
* Explains interactive rebasing reasonably well (1.8: Interactive Rebasing)

### The Index is the Staging Area for your next Commit (Section 2: Index)
* Index lets you control what of your working-tree changes from your last commit go into the next one (2.1: Meet the Middle Man)

### Reset: Dangerous Magic

### The Stash: Unreachable commits ftw?!?!


## Oh Shit, Git!?!
* [link](https://ohshitgit.com/)
* Solutions to common Git problems.


## Git Book/Pro Git
* [link](https://git-scm.com/book/en/v2/)
### 1.3: Getting Started - What is Git?
* Explains the three states and how they relate in a timing diagram (1.3: Getting Started, The Three States)
    * Explains the three states as **whether a file is modified, staged, or committed**.
* Advantage of content-addressing is that Git will always know when a file's been changed.
    * Therefore, "you can’t lose information in transit or get file corruption without Git being able to detect it" (1.3, Git Has Integrity)
* Once something's been committed, it's very hard to lose it.

### 3.1: Git Branches - Branches in a Nutshell
* Repository is only commits, blobs, and trees (3.1: Branches in a Nutshell)

### 7.7: Git Tools - Reset Demystified
* Goes into more detail on the three states as "three trees" in 7.7: HEAD, Index, and Working Directory
    * Index is "your proposed next commit" (The Index)
        * Also, it's "not technically a tree structure"
    * Nice walk-through of how your workflow affects each tree in "The Workflow"

### 1.2: Getting Started - A Short History of Git
* In 1.2, outlines some goals of Git:
    * Speed
    * Simplicity
    * Strong support for nonlinear development



## The Thing About Git
* [link](https://tomayko.com/blog/2008/the-thing-about-git)
* Explains the Index's utility through a practical example
    * "The tangled working copy problem", "viva la index", and "Solving The Tangled Working Copy Problem With Git’s Index"
