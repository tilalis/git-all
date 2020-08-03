# git all - simple multiple same folder repositories management
git commands for __all__ repositories located in same folder 

### Cloning
Special thing in `git all` is cloning. 
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

### Base Examples:

You can use whatever `git` command you want on multiple git repositories. All you need to do is to prepend it with `all`.

* `git all status` shows git status for all repositories in folder

* `git all checkout master` checkouts in all repos to local `master` branch
* `git all checkout -b new_branch` creates new branch `new_branch` all repos from current checked out branch

* `git all tag v1` tags all current repositories status to lightweight tag `v1`
* `git all tag -a v1 -m "version one"` tags all repos current status to tag v1 with message "version one"
* `git all push origin --tags` pushes all tags from all repos


### Ignore repositories

Ignored repositories should be listed in `.gitallignore` file, folder names with or without trailing slash symbol `/` 

## Scope Examples

You can create a file with list of repositories you want to use git all with, filename can start with '.', 
then `git all` will only iterate over listed folders.

In order to use scopes juse use the following syntax: `git all {filename} {whatever commands you want to use}`

Let's say you have `.dev` or (`dev`) file in the same folder as your git repositories with the following contents:

```
repo1/
repo2/
repo3/
```

Then you can use `git all dev status` and `git all` will execute commands only in those repositories. (Even if it's listed in .gitallignore)
Note that you don't need to write `git all .dev` (with dot), but you can if you want to.

### How To Intall:

* Clone this reppsitory
* Mark `git-all` file as executable
* Put in under your system PATH (move the file itself, or add gitall folder location to PATH) 
    * for Linux you can do: `sudo ln -s $(pwd)/git-all /usr/local/bin/`
    * for Windows you can move `git-all` file to `mingw64/bin` folder of your Git installation (for instance `C:\Program Files\Git\mingw64\bin`) 
* Use: `git all [filename] {command} {parameters}`

### See Also:
* [tkrajina/git-plus](https://github.com/tkrajina/git-plus) — `multi` in `git-plus` is the closest to what is done by `git all`
* [naddeoa/git-bulk](https://github.com/naddeoa/git-bulk)
* [nosarthur/gita](https://github.com/nosarthur/gita)
* [isacikgoz/gitbatch](https://github.com/isacikgoz/gitbatch)
* [mu-repo](https://github.com/fabioz/mu-repo/)
* [myrepos](http://myrepos.branchable.com/)

### How it's different from all of the abovementioned software?

* It's zero-configuration
* It's written in bash
* You almost don't need to learn how to use it
    * Clone a list of repositories from file
    * Exclude git repositores you don't want to handle with `git-all` in `.gitallignore`
    * Just add `all` to whatever git command you want to execute on your repositories
