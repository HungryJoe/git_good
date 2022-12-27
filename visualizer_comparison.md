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

# Index Visualizers
## Gitk
* GUI
* Shows index icon above latest commit
* Treats index like a commit
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
