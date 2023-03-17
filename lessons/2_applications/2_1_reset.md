# Reset: Rare Manipulation of the Three Trees

## Refresher: What are The Three Trees?
* the Working Tree/Directory (WT)
    * Contains files you normally edit via tools that aren't Git
    * Place to experiment, figure out what you might want to add to your Repository
* the Staging Area/Index (SA)
    * Place where you prepare the next commit to your Repository
* HEAD
    * Reference to the checked-out branch or commit
    * Relates the other two states to the Repository (graph of commits that comprise the WT's history)

## Everyday Manipulation of the Three Trees
Most of the time, you update the trees with each other's contents in only a few ways:
* Working Tree -> Staging Area: `git add`
* Staging Area -> HEAD: `git commit`

### Moving `HEAD`
Additionally, moving `HEAD` with `git switch` or `git checkout` causes a couple of automatic tree updates:
* HEAD -> Staging Area: `git switch`/`git checkout` (moving `HEAD`)
* Staging Area -> Working Tree: `git switch`/`git checkout` (moving `HEAD`)

**NB:** You can't move `HEAD` in this way if there are changes in the WT that would be overwritten.

## Rare Manipulation of the Three Trees with Reset
Reset can do up to three tree manipulations not present above, in sequence.
1. -> HEAD
    1. Moves the currently checked-out branch, which moves `HEAD` *without triggering the automatic updates shown above*
1. HEAD -> Staging Area
    1. Updates the Staging Area from `HEAD`'s contents, without triggering the automatic SA->WT update shown above
1. Staging Area -> Working Tree
    1. Updates the Working Tree from the Staging Area's contents, but *without regard for unstaged changes*

Each step in the sequence corresponds to a particular "flavor" of `reset`:
1. `git reset --soft` stops after the first
1. `git reset [--mixed]` stops after the second
1. `git reset --hard` stops after the third

## Sources
* https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified
