# Using a script to automate note syncing

## Overview and theory

Using this sytem for some time can expose some repetitive parts of git that
aren't entirely useful for keeping track of notes.

Many of the following features of git make sense when working on code as a group,
but that's not what we are using git for. Here are some of the potential friction points:

- ```git add``` can be useful for only adding select changes. In the context of 
code, this can be a powerful feature. For our notes, however, it's likely we will 
always add all our changes, making this step feel repetitive.

- ```git commit -m "some message"``` is a crucial feature when working as a group so that
other developers can keep track of what was changed when. When working alone, on a 
non-technical project such as school notes, it can become an annoying feature
that is barely used.

- Forgetting to fetch before working on notes sucks. It can cause you to rewrite notes,
and oftentimes will lead to merge conflicts. We detail how to deal with these in
our [troubleshooting]() section, but it would be nice if we could avoid this headache
all together.

We'll use a script that will automate the entire pulling and pushing process for us, avoiding most of these
headaches, and keeping the system easy to use. The script will vary depending
on your system. See the [Windows](#windows) or [Mac/Linux](#mac/linux) sections below according
to your operating system.


## Windows

Here is the script. Copy the following code:
```bat
@echo off
REM Navigate to the notes directory
cd C:\Path\To\vaults\notes

REM Fetch the latest changes from the remote repository
git fetch origin

REM Pull the latest changes
git pull origin main

REM Add all new and changed files to the commit
git add .

REM Commit the changes with the current date as the message
for /f "tokens=1-5 delims=/ " %%d in ("%date%") do set Date=%%f-%%e-%%d
for /f "tokens=1-5 delims=: " %%a in ("%time%") do set Time=%%a-%%b
git commit -m "auto backup: %Date% %Time%"

REM Push the commit to the remote repository
git push origin main
```

1. Replace ```C:\Path\To\vaults\notes``` with the actual path to your notes directory.

2. Save this script as a ```.bat``` file, for example, ```update_notes.bat```.

3. Run this script whenever you start and finish work by double clicking the ```.bat```
file. This should automatically get you synced up with the remote repository with
a single click.

## Mac/Linux

Here is the script. Copy the following code:

```bash
#!/bin/bash

# Navigate to the notes directory
cd /path/to/your/notes

# Fetch the latest changes from the remote repository
git fetch origin

# Pull the latest changes
git pull origin main

# Add all new and changed files to the commit
git add .

# Commit the changes with the current date as the message
DATE=$(date +'%Y-%m-%d %H:%M:%S')
git commit -m "auto backup: $DATE"

# Push the commit to the remote repository
git push origin main
```

1. Replace ```/path/to/your/notes``` with the actual path to your notes directory.

2. Save this script to a file, for example, ```update_notes.sh```.

3. Making sure you're in your notes directory, make it executable: ```chmod +x update_notes.sh```

4. Making sure you're in your notes directory, running ```./update_notes.sh``` should get you synced up with the remote
repository in a single click.

