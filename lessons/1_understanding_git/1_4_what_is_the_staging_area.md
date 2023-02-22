# What is the Staging Area?
## Lecture
* Aka the Index
* The Staging Area lets you control which changes on your Working Tree go into your next commit
    * Lets you separate "developing" (making changes in your Working Tree) and "committing" (writing the history of your Working Tree to the Repository)
* When you run `git commit`, the contents of the Staging Area are written to a tree for the new commit
* *Not a set of diffs from `HEAD`*; a set of blobs & trees that are originally populated from `HEAD` and updated with `git add`
* In `git status`, the red files differ between the Staging Area and Working Tree, while the green differ between the Staging Area and `HEAD`
* Can use `git ls-files -s` to list the objects in the Staging Area to see how they change as you call `git add`
* Go through diagrams in "The Workflow" section of Git Book 7.7 with what `git status` and `git ls-files -s` would say at each point
* Checking out/switching to a branch overwrites the Staging Area (and Working Tree) with the contents of the new `HEAD`
    * This is why you'll get conflicts when you try to change branches while you have un-committed changes

## Lab/Homework
* Make a repository, write some files in its Working Tree, and then split those files into multiple commits
    * **NB:** Should include splitting at least one file across multiple commits
