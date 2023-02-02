# What is a Branch?: Git References
## Lecture
* 3 kinds of **references** in Git, plus `HEAD`
* All reference commits
    * Can be thought of as (reference name, commit hash) pairs
* Generally contained in `.git/refs/<reference-type>/<reference-name>`
    * Each **reference** file *only* contains the commit hash being referenced
        * Makes creating and deleting references really cheap
            * Aligns with one of Git's design goals: "strong support for nonlinear development (thousands of parallel branches)" (https://git-scm.com/book/en/v2/Getting-Started-A-Short-History-of-Git).
* Each commit defines a history through its parent(s)
    * A **reference** to a commit says that its history is important
        * Makes it findable so you can easily make use of it
        * Tells Git not to garbage-collect it

### Tags
* Two kinds: annotated and lightweight
* Both reference commits
    * Well, really they can reference any object, but usually they reference commits

#### Lightweight Tags
* **Location:** `.git/refs/tags/<tag-name>`
* Just object references

#### Annotated Tags
* **Location:** `.git/refs/tags/<tag-name>` and `.git/objects/<hash>`
* Objects as well as references because they contain metadata as well as a name and hash
    * Metadata: tagger, time of tagging, message

### Branches
* **Location:** `.git/refs/heads/<branch-name>`
* Just like lightweight tags, except they can move when they're checked out.
    * Updated when you make a new commit and they're in `HEAD`

### `HEAD`
* **Location:** `.git/HEAD`
* A symbolic reference (most of the time)
    * Refers to a reference (almost always a branch) instead of directly to a commit
* `HEAD` specifically will always refer to a branch (symbolic ref) or commit (normal ref)
* A repository is said to be in "detached HEAD state" when its `HEAD` refers to a commit
* Refers (directly or indirectly) to the currently checked-out commit or branch
    * I *think* that this means that `HEAD` is the commit whose tree the Staging Area is populated from
* Whenever a new commit is made via `git commit`, its parent is the commit `HEAD` refers to

### Remotes
* **Location:** `.git/refs/remotes/<remote-name>/<branch-name>`
* Represent other repositories' branches at last `git fetch`/`git push`
* Read-only: Can `git switch` to them (in detached HEAD state), but can't commit on them with `git commit`

## Lab/Homework
* Follow along with [10.3 in Pro Git](https://git-scm.com/book/en/v2/Git-Internals-Git-References) (ignoring the Remotes section)
