% Git Good: Course Overview
% Sam Kagan

The course will be divided into 3-4 sections:

1. A theoretical framework for understanding Git
1. How one can interpret everyday Git activities in light of that framework
1. How one can best approach and optimize Git activities that aren’t everyday but aren’t all that rare either
1. (optional) Tools that can make Git easier to use than vanilla bash, and how to effectively use Git from IntelliJ

The first two sections will be interleaved so that the theory can be more easily understood through familiar examples.

# Structure of Each Lesson
The plan for the first part of the course (sections 1 and 2 above) is **hour-long lessons divided evenly between lecture and lab.**

There are a couple of ideas for what *lab* might mean:
1. Like a lab in school, where assignments are done in-class after lecture so I can answer questions as they arise.
1. More like a traditional lecture class, where assignments are done outside of class and questions can be raised in the first half of class.

# Course Materials
## Primary Texts
* [Think Like a Git](https://think-like-a-git.net)
    * Great for how to think about branching
    * Repository as a graph
* [Git from the Bottom Up](https://jwiegley.github.io/git-from-the-bottom-up)
    * Great for how to think about commits & the three states
    * Repository as an append-only filesystem
* [Pro Git (or The Git Book)](https://git-scm.com/book/en/v2/)
    * Great for how to think about commits & the three states
    * Official documentation

## Supplemental Texts
* Some texts to help understand (directed, acyclic, unweighted) **graphs** in the CS/graph-theory sense at a conceptual level:
    * [Graphs in Computer Science *Portland State University*](https://web.cecs.pdx.edu/~sheard/course/Cs163/Doc/Graphs.html) (only through *Kinds of Graphs*)
    * [Explained: Graphs *MIT News*](https://news.mit.edu/2012/explained-graphs-computer-science-1217) (only first couple paragraphs)
    * [Graph (discrete mathematics) *Wikipedia*](hhttps://en.wikipedia.org/wiki/Graph_(discrete_mathematics)#Definitionsttps://en.wikipedia.org/wiki/Graph_(discrete_mathematics)#Definitions) (for the algebraically-minded)
* Some texts to help understand **trees** in the CS/graph-theory sense at a conceptual level:
    * [Tree (data structure) *Wikipedia*](https://en.wikipedia.org/wiki/Tree_(data_structure)) (only *Intro*, *Terminology*, *Examples of trees and non-trees*, and *Mathematical Terminology*)

## Software
* Git
* A terminal environment (where you'll run Git for all exercises)

# Lesson Plan
Now, I'll break each section outlined in the intro. into lessons.

## Understanding Git
### Intro / What is a Repository?
#### Lecture
* What is this course?
    * Go over the Course Overview (this document)
* The three states
    * Working tree/working directory
        * Your local directory (commonly referred to as "the repository")
    * Staging Area
        * The middleman
        * Also known as the "index"
        * Discuss more later once we understand commits better
    * Repository
        * An append-only filesystem of the working tree's history
        * A graph of the working tree's history

#### Lab/Homework
* Discuss how to structure lab portion of each meeting
* Discuss how often we want to meet
* Individually:
    * Create repository for class
    * View the three states via `status` and `log`
        * Make a new file
        * Add it to the staging area
        * Commit it
    * View graph of history via `log`
        * Make another commit
        * Make a *branch* from the first commit, and commit there
        * Merge the branch back into the starting branch

### What is a Commit?
#### Lecture
* Commits are the fundamental unit of a repository
    * Nodes in the graph
    * Snapshots of history
    * Pointers to filesystem trees plus references to parent commits
        * Trees are like your working tree, but made of blobs instead of files
        * Blobs are just content, no metadata (i.e. mtime, ctime, name, permissions)
            * Trees own the metadata because different trees may associate different metadata with different blobs
        * Trees give you content addressibility

#### Lab/Homework
### What is the Staging Area?
#### Lecture
* The staging area lets you control which changes on your working tree go into your next commit

#### Lab/Homework
### What is a Branch?
#### Lecture
* Branches are just references to commits.
    * They keep up with your work, unlike tags.

#### Lab/Homework
## Applying Your Understanding of Git to Common Problems
## (Optional) Configuring your Environment to make Git Easier to Use
