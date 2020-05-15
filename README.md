# gitall - perform git action on all repos

## Examples:

* `gitall/status` shows git status for all subfolders

* `gitall/checkout master` checkouts in all repos to local `master` branch
* `gitall/checkout -b new_branch` creates new branch `new_branch` all repos from current checked out branch

* `gitall/pull` pulls in all repositories from checked out branch
* `gitall/pull origin master` pulls in all repositories from remote `origin` and branch `master`

* `gitall/tag v1` tags all current repositories status to lightwweight tag `v1`
* `gitall/tag -a v1 -m "version one"` tags all repos current status to tag v1 with message "version one"

* `gitall/push origin master` pushed all current repos states to remote `origin` and branch `master` master
* `gitall/push origin --tags` pushes all tags from all repos


## Exclude folders 

Excluded folders should be listed in `gitall/.excluded` file, folder names should have trailing slash symbol `/` 

# How To Use:

* Clone this repo to the folder with all other repositories
* Mark `.ead.sh`, `pull`, `push`, `status`, and `tag` as executable
* List excluded directories in `gitall/.excluded`
* Use: `gitall/{command} {parameters}`
