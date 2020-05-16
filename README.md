# git all - simple multiple same folder repositories management
git commands for __all__ repositories located in same folder 

### Cloning
The only special thing in `git all` is cloning. 
In order to clone multiple repositories, you need to provide a file where every line is a valid set of arguments to reglar `git clone`

Let's say you have a file named `repositories.list` with the following content:
```
                  https://github.com/stencila/test.git renamedRepo
                  https://github.com/rtyley/small-test-repo.git
--branch gh-pages https://github.com/Samreay/WorkshopExample.git
```

If you execute `git all clone repositories.list`, as a result you will have the following folder structure:

```
renamedRepo/         # This folder will contain "test" repository, "master" branch
small-test-repo/     # This folder with contain "small-test-repo" repository, "master" branch
WorkshopExample      # This folder will contain "WorkshopExample" repository, "gh-pages" branch
```

### Other Examples:

You can use whatever `git` command you want on multiple git repositories. All you need to do is to prepend it with `all`.

* `git all status` shows git status for all repositories in folder

* `git all checkout master` checkouts in all repos to local `master` branch
* `git all checkout -b new_branch` creates new branch `new_branch` all repos from current checked out branch

* `git all pull` pulls in all repositories from checked out branch
* `git all pull origin master` pulls in all repositories from remote `origin` and branch `master`

* `git all tag v1` tags all current repositories status to lightweight tag `v1`
* `git all tag -a v1 -m "version one"` tags all repos current status to tag v1 with message "version one"

* `git all push origin master` pushed all current repos states to remote `origin` and branch `master` master
* `git all push origin --tags` pushes all tags from all repos


### Exclude folders 

Excluded folders should be listed in `.gitallexcluded` file, folder names with or without trailing slash symbol `/` 

### How To:

* Clone this reppsitory
* Mark `git-all` file as executable
* Put in under your system PATH (move the file itself, or add gitall folder location to PATH) 
    * for Linux you can do: `sudo ln -s $(pwd)/git-all /usr/local/bin/`
    * for Windows you can move `git-all` file to `mingw64/bin` folder of your Git installation (for instance `C:\Program Files\Git\mingw64\bin`) 
* Use: `git all {command} {parameters}`
