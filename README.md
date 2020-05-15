# git all - simple multiple same folder repositories management
git commands for __all__ repositories located in same folder 

### Examples:

* `git all status` shows git status for all repositories in folder

* `git all checkout master` checkouts in all repos to local `master` branch
* `git all checkout -b new_branch` creates new branch `new_branch` all repos from current checked out branch

* `git all pull` pulls in all repositories from checked out branch
* `git all pull origin master` pulls in all repositories from remote `origin` and branch `master`

* `git all tag v1` tags all current repositories status to lightwweight tag `v1`
* `git all tag -a v1 -m "version one"` tags all repos current status to tag v1 with message "version one"

* `git all push origin master` pushed all current repos states to remote `origin` and branch `master` master
* `git all push origin --tags` pushes all tags from all repos


### Exclude folders 

Excluded folders should be listed in `.gitallexcluded` file, folder names with or without trailing slash symbol `/` 

### How To:

* Clone this repo to the folder with all other repositories
* Mark `git-all` file as executable
* Put in under your system PATH (move the file itself, or add gitall folder location to PATH) 
    * for Linux you can do: `sudo ln -s $(pwd)/git-all /usr/local/bin/`
* Use: `git all {command} {parameters}`
