# Connecting to Git and Creating a Project

### 1. Making Sure Git Is Installed

Go to your terminal (Mac), search GitBash (Windows), or open the terminal in RStudio (next to the console)

#### Check to see if Git is Installed
```
which git
```
#### Check to see which version is installed
```
git --version
```

##### Everyone should have installed git & gitbash before this workshop

### 2. Telling Git Your GitHub Credentials
#### - Substitute your credientials 
```
git config --global user.name 'UserName'
git config --global user.email 'user@email.com'
git config --global --list
```

## 3. Generating a new SSH key
#### Some Background Info
___

Secure Shell Protocol (SSH) helps you access and write data to GitHub repositories. The SSH key authenticates your machine to GitHub. There are many different layers of security you can add to an SSH key. We will not be adding those layers today. 
If you think you might already have an SSH key, follow the directions at [this website](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
___

### 3.1 Substitute your email 
```
ssh-keygen -t ed25519 -C "user@email.com"
```

Your output should look something like this 
`Generating public/private alogrith key pair`

Click `Enter` when you see the prompt below. You do not need to specify which file
```
Enter a file in which to save the key (/Users/you/.ssh/id_algorithm): [Press enter]
```
You do not need to remember the image that pops up

### 3.2 Adding your SSH key to the ssh-agent
This will start the ssh-agent in the background.
```
$ eval "$(ssh-agent -s)"
> Agent pid 59566
```

### 3.3 Copy the public key to your clipboard
#### Mac
```
$ pbcopy < ~/.ssh/id_ed25519.pub
```
#### PC 
```
$ clip < ~/.ssh/id_ed25519.pub
```

## 4. Connect SSH Key to Github

### 4.1 Go to [GitHub](github.com) and sign in
### 4.2 Go to your page github.com/username and go to settings
![Go to settings on your GitHub page](/img/github_settings_main.PNG) 

### 4.3 Select SSH GPG keys on the left-hand panel
![Select SSH & GPG keys on the left-hand panel](/img/github_ssh.png) 

### 4.4 New SSH key
![Select `New SSH key` to add the key we just copied to our clipboard](/img/github_addnewkey.png) 

![Title the ssh regarding the computer you are using (work, personal, mac, etc) and copy the key into the Key section](/img/github_shh_add.PNG) 

### *Please note that steps 1-4 only need to be completed one time per computer and account! The next steps will apply anytime you would like to make a new repository!*


## 5. Restart R if you have it open (Session -> Restart) 

## 6. Create a new repository and add a Rproject to it
### 6.1 Go into your GitHub account page and select `Repositories` tab. 
![Press the green "New" button. This will create a new repository](/img/github_newrepo.png)

### 6.2 Set up a new repository 
![Give it a name (doesn't have to be what I have in the example photo). Once all the information is filled out select `Create Repository` ](/img/github_createrepo.PNG)

### 6.2 Copy ssh key link for this repository
![In order to connect this repo with an Rproject, we need to connect this repo at a project on our computer](/img/github_copyrepo.png)

## 7. Create a new Version Control RProject
### 7.1 open R
### 7.2 Go to File -> New Project
### 7.3 Select the Version Control Project 
![Select the Version Control project. This option allows us to connect our repository the quickest](/img/github_createnewproject.PNG)

### 7.4 Select the `Git` Project from the Version Control options
![Select `Git`](/img/github_gitversion.PNG)

### 7.5 Copy the ssh key address from step 6.2
![Copy the address from step 6.2. The project directory name should autopopulate to what you choose as the repo name. You can change where the directory is housed by selecting the browse key. Where it is housed can change later. ](/img/github_clonerepo.PNG)

### 7.6 Create Project

Once everything is how you would like it to be select `Create Project` The new Rproject will pop up. 

## 8. Add/edit files in your repository
Select how you would manage your file structure for the project (project or activity based? )

## 9. Commit changes and push to repository. 

## 10. Helpful links

[Happy Git and GitHub for the useR](https://happygitwithr.com/index.html)\
[Simona Picardi - Quantitative Ecoloyg and Reproducible science](https://www.picardiecology.com/)\
[Rich Pauloo - How to keep your R projects organized](https://richpauloo.github.io/2018-10-17-How-to-keep-your-R-projects-organized/)

There are many resources all over the internet on connecting with GitHub and how to use it more efficiently. This is a tough process with a lot of bumps along the way but we appreciate you following along!