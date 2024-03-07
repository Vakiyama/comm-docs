# How to Initialize a Repository on GitHub

This section will focus on helping you initialize your GitHub repository. After you read this section, you will be able to setup a new GitHub repository for future projects.

## Setps to get started

In the introduction, you created a GitHub account and now you will be using that account to initialize your GitHub repository. You will be using Git Bash (or another shell) to run commands.

## Step 1: Create a New Repository

- Click the `+` icon in the upper-right corner and select _New repository_.

- Or, go to [https://github.com/new](https://github.com/new).

## Step 2: Configure Your Repository

Fill out the details of your repository:

- **Repository name**: Choose a unique name that reflects your project.
- **Visibility**: Select whether the repository is Public or Private.

## Step 3: Create the Repository

Click the `Create repository` button.

## Step 4: Navigate to the Source Directory (or create one)

- Open Git Bash (or anotehr shell) and run `cd <path name>` to navigate to the source directory of your project.

  - Example: `cd c:/users/user/bcit/comp1310/<directory name>`

- If you do not have a source directory for your project, you can create one by running:

  - `mkdir <folder name>`
  - Make sure to `cd` into the directory after you create it

## Step 4: Push an Existing Local Repository

If you have a local repository to push:

> [!WARNING] Warning
> Make sure you are in the source directory of your project before running the next command. Failing to do so could hinder your conputers performance. If you made this mistake find a solution in the troubleshooting section.

```sh
# Initialize your local directory as a Git repository
git init
```

> [!TIP] Success
> You know this command ran succesfully if you look at the Explorer and see a file called `package.json`

```sh
# Add the files in your new local repository
git add .

# Commit the files that you've staged in your local repository
git commit -m "First commit"
```

> [!NOTE] Remote Url
> You Remote Url is located in your GitHub repository. Copy and paste it into the command below. 

```sh
# Add the URL for the remote repository
git remote add origin <REMOTE_URL>
```

> [!NOTE] Master or Main
> If the command below does not work for you, replace `master` with `main` and try again.

```sh
# Push the changes in your local repository to GitHub
git push -u origin master
```
