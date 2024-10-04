# Github One Stop Cheat Sheet

## This cheat sheet will be helpful AFTER you have already connected your computer to Git folloiwng the steps in Connecting to Git. 

## Follow these steps and then choose your own adventure...
1. Create a new repository on Github. 
   - Copy the ssh key link for this repository, once it has been created
2. In GitBash (Windows) or the Terminal (Mac) change the working directory to the folder location you want
   - The command to change the file path is `cd` 
   - e.g. `cd "file/path/location"`
3. The next steps depends on what you want to do. So choose your own adventure
   - [Creating a new repository for a new project](#creating-a-new-repository-for-a-new-project)
   - [Creating a new repository for an existing project](#creating-a-new-repository-for-an-existing-project)
   - [Cloning a repository](#cloning-a-repository)
     - [Cloning and Collaboration](#cloning--collaboration)
4. [Common Commands](#common-commands) you may use

## Creating a new repository for a new project
```
echo "# message" >> README.md
git init
git add README.md
git commit -m "message"
git remote add origin git@github.com:user/repo.git
git branch -M main
git push -u origin main
```
## Creating a new repository for an existing project
```
git init
git add .
git commit -m "message"
git remote add origin git@github.com:user/repo.git
git branch -M main
git push -u origin main
```
## Cloning a repository 

```
git clone <url>
```
Once the repo has been cloned, a folder with the name of the repo will appear in the file path you specified and all the tracked files will be there. From there, you can go forth and start making changes. 

#### Cloning & Collaboration
Cloning a repository is a good tool when working with collaborators on the same code/project. You can add collaborators to a repository through [GitHub.com](github.com). 

Go to the repository page > settings > Collaborators (this will be on the panel on left) > Add people. 

Once a collaborator has been added to a repository, they can clone the repository, and have the same access as the person who created the repository. 

**IMPORTANT NOTE: Communicate with collaborators such that no one is working on the same file at the same time. This will create merge conflicts.**

## Common commands 
These common commands would be used inside terminal (Mac) or Git Bash (Windows), if you wish to keep track of projects outside of RStudio. 

### Commit
**Commit early and often. With each commit, you are taking a snapshot of that code (or doc or figure) at that point and time.**
Additionally, this is a message to your future self. These messages should be succinct but descriptive. In the terminal (mac) or Git Bash (windows) " . " refers to all updated/modified/new files in the repository. You can also specify certain files by name. Each commit is saved on your local machine, and once 
```
git add .
git commit -m "message here
```
### Push 
Moves the committed changes from your machine to GitHub. 
```
git push
```
### Pull
If you are working collaboratively with someone, make sure you pull any changes from the repository before you start editing scripts 
```
git pull
```

## Helpful links
[Generating a New SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)\
[Another Github Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)