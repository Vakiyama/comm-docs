# Troubleshooting Guide

This section aims to help you quickly identify and resolve common issues you might face. Each problem is described along with its probable cause and a step-by-step solution to help you resolve the issue efficiently.

## Computer feels slower than usual

If you notice that your computer is running slower than usual, it might be due to accidentally initializing a Git repository by running `git init` in a directory with a large number of files or the root folder on your computer. Here's how you can diagnose and fix this issue:

### Recommended solution

1. `cd path/to/your/directory` into the folder that you mistakenly ran `git init`
2. run `rmdir /s .git` on Windows or `rm -rf .git` on macOS or Linux

## Wrong Remote Url

If you've mistakenly added the wrong remote origin URL when setting up your GitHub repository, you might not be able to push your commits to your repository.

### Recommended solution

1. Run `git remote -v` to confirm that you entered the incorrect remote URL
2. Run `git remote set-url origin new_url` with your updated URL
3. Run `git remote -v` to confirm your remote URL has been updated

## Pushing Without Fetching Changes

Attempting to push your work to GitHub without first fetching and pulling the changes can lead to conflicts especially when you are working with other people.

### Recommended Solution

1. Run `git config pull.rebase false` to configure Git to merge the changes from the remote branch into your local branch
2. Run `git pull` to pull the change on your computer
3. Run `git push`

!!! success

    The feedback in the command line will indicate whether the command worked or not. This is what a succesful output looks like.

    ```sh
      Merge made by the 'ort' strategy.
      docs/troubleshooting.md | 24 +++++++++++++++++++++---
      mkdocs.yml | 4 ++++
      2 files changed, 25 insertions(+), 3 deletions(-)
    ```

## Navigating to directory using `cd` and `ls`

If you're encountering difficulties using cd (change directory) and ls (list directory contents) to navigate to your desired location, this section offers guidance to diagnose and solve common issues.

## Missing credentials

If git is repeatedly asking you to enter a username or password, or it complains
that it doesn't know who you are when commiting to your notes repository, we need to do some additional
setup.

### Recommended Solution

```
# Run the following commands to set up your identity

git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

This will make sure your commit command can run correctly. Then:

```
# Run the following command to automatically save your username and password
# when using git.
git config --global credential.helper store
```

This will stop GitHub from asking for your credentials everytime you run a pull or push command,
as well as letting your git related scripts run without trouble.
