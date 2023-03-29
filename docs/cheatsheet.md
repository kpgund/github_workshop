# Github One Stop Cheat Sheet

### This is a cheatsheet once you have already connected to github with an SSH or HTTPS key

1. Create a new repository on Github
2. In GitBash (Windows) or the Terminal (Mac) change the working directory to the folder location you want
- 2a. cd "file/path/location"
3. Put in the following code

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
## Common commands 
Remember to b
### Commit
Remember this is a message to your future self. These messages should be succinct but descriptive. " . " refers to all updated/modified/new files in the repository. or you can specify certain files. Each commit is saved on your local machine, so if there are many big changes commit often. 
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