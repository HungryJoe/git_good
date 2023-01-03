# Repo-Graph Visualizers
## Gitk
* GUI
* No zoom
* Looks gross
* Official Git software

## Gitg
* GUI
* Lots of deps
* Hangs when trying to change to "horizontal view"
* No zoom
* Looks slightly less gross than Gitk
* Patch view doesn't work

## Git-cola
**Verdict: Unusable**
* GUI
* Few deps
* Uses Gitk for visualization

## Gittyup
**Verdict: Unusable**
* GUI
* Cask in `brew`
* Uninstallable on Mac for security reasons

## Git log
* CLI (Just static output)
* Note: command with options: `git log --oneline --abbrev-commit --all --graph --decorate --color`

## git-graph
* CLI (Generates static images)
* Not pretty
* Includes blobs, trees, commits, and branches in the same view
* Gets very cluttered for non-trivial repos

# Staging Area Visualizers
## Gitk
* GUI
* Shows staging-area icon above latest commit
* Treats staging area like a commit
* No view for unstaged changes

## Gitui
* TUI
* Status tab shows staged and unstaged changes in different views
* Pretty

## Lazygit
* TUI
* Merges staged and unstaged changes into one view
* Pretty

## Git status
* CLI (Just static output)
* Separates staged and unstaged changes
* Not pretty
* Comes with Git

# Tree/Blob Visualizers
## git-graph
* CLI (Generates static images)
* Not pretty
* Includes blobs, trees, commits, and branches in the same view
* Gets very cluttered for non-trivial repos
