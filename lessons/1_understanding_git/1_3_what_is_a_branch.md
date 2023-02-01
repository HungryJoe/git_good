# What is a Branch?: Git References
## Lecture
* 3 kinds of *references* in Git, plus `HEAD`
* All reference commits
    * Can be thought of as (reference name, commit hash) pairs
* Generally contained in `.git/refs/<reference-type>/<reference-name>`
    * Each reference file *only* contains the commit hash being referenced
        * Makes creating and deleting references really cheap
* Each commit defines a history through its parent(s)
    * A reference to a commit says that its history is important
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
* Just like lightweight tags, except they can move when they're checked out.
    * Updated when you make a new commit and they're `HEAD`

### `HEAD`

### Remotes

## Lab/Homework

## Appendix: Other Ways to Reference Commits
