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

If you're encountering difficulties using cd (change directory) and ls (list directory contents) to navigate to your desired location, check the solution below.

### Recommended Solution

1. Running `ls` will show you all the contents that are inside the current directory you're in. That means that when you run `cd`, it needs to be followed by one of the items listed by the `ls` command.
2. If the `ls` command does not list any content that can you want to `cd` into, you may need to run `cd ..` to go back to the parent folder.
3. Run `pwd` (print working directory) to show the path to the directory that you are currently located in

!!! info

    Pressing `tab` while writing a `cd` command will auto-complete the path name for you.

    Example - Press `tab` with `cd m` will auto-complete to `cd my-bcit-notes` if there are no naming conflicts.
