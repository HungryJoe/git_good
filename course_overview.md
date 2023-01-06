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

# The Purpose of This Course
The purpose of this course is to help you understand and more effectively use one of the less well-understood tools that the software engineers here use every day.

## Who This Course Is Intended For
As implied above, this course is intended for software engineers who use Git in their daily lives.
I will assume some familiarity with the mechanics of basic Git usage (i.e. how to turn your changes into a commit, how to interact with a remote Git server, how to create and merge branches).
I will *not* assume that anyone taking this course has much of an understanding of these mechanics, or a very good internal model of what they actually do.
I will also assume some familiarity with **graphs** and **trees** as they're defined in graph theory or computer science.

For people who aren't familiar with Git or graphs and trees, it is my hope that you get something out of this course.
If this relative lack of experience becomes a barrier to understanding, please let me know so that I can arrange additional materials for you.

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
* [The Thing About Git](https://tomayko.com/blog/2008/the-thing-about-git)
    * Explains the Staging Area's utility through a practical example
* [Oh Shit, Git!?!](https://ohshitgit.com/)
    * Solutions to common Git problems

## Software
* Git
* A terminal environment (where you'll run Git for all exercises)
* The `git-graph` visualizer, which we will use to view repositories and commits as graphs
    * Clone my fork [here](https://github.com/HungryJoe/git-graph), it's just a Python script
* The Git TUI `gitui`, which we will use to visualize the staging area
    * Installation instructions can be found [here](https://github.com/extrawurst/gitui#6--installation-top-)

# Lesson Plan
Now, I'll break each section outlined in the intro. into lessons.

## Understanding Git
* Intro / What is a Repository?
* What is a Commit?
* What is the Staging Area?
* What is a Branch?

## Applying Your Understanding of Git to Common Problems
## (Optional) Configuring your Environment to make Git Easier to Use
