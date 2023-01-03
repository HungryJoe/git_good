# Questions about Git
1. Do trees store the entirety of the staging area's file's contents at commit time, or just their diffs from the parent?
    1. Answer: They store the entire staging area's contents at commit time (Git Book, 1.2, Snapshots not Differences).
        1. Furthermore, the staging area is initialized with the contents of `HEAD` whenever it changes (Git Book, 7.7, The Index). So really, each commit is a snapshot of the entire working directory, and the staging area is too.
