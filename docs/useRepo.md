# How to use your repository

## Overview and theory

GitHub will be acting as a central backup to sync all of your school
related projects, notes and materials you will collect throughout the
program.

There are two places your notes will exist, your **local** and **remote**
repositories.

- Your local repository will store any of the changes and work on your
  local computer.

- The remote repository is where we will save backups and changes to keep
  things synced across your different devices, and is found on GitHub.

!!! info
    Although we will be using GitHub for this guide, one could choose to use GitLab
    or any alternative Git repository. One could potentially host their own repository if they'd like,
    but that will be outside the scope of this guide.

Whenever you are edititing your notes, we need to follow the following
high level procedure:

1. Syncing and updating your local with remote - **pulling** changes
2. Updating your remote with new changes from your local - **pushing** changes

By making sure we always **pull** any changes from our other devices onto
our local device before we start any work, and that we **push** what we've
done when we finish working, we'll make sure our notes are seamlessly synced
across our devices.

## Directory structure recommendations

If you have your own organizational system for your notes folders, feel
free to skip this section.

When starting out the program or any large project, it can be tempting to
setup your folders pre-emptively based on the classes and assignments you
will have.

Our recommendation is that you add folders for notes, labs and assignments
only when you will be adding new files to them.

We recommend this approach for two reasons:

1. Git will not keep track of empty folders. Tracking an empty folder like
   this is possible by adding a hidden ".gitkeep" file to each, but this
   can be come cumbersome quickly. 
2. You may find that your notes become difficult to navigate and keep
   track with Git if a large amount of files are present at all times. To
   learn how to use this new system, it is best that things are kept as
   simple as possible initially.

## Pulling changes from remote

Let's assume you've worked on a project under
```notes/intro-to-programming/project.js``` in class and you would like to
continue working on it from home.

Logging onto your home computer, we would do the following steps before we
begin work:

### Navigate to your repository

1. Open up your terminal, running bash or a shell equivalent.
2. Navigate to your notes directory. Your shell should look something like:
```$ path/to/your/notes (main) ```

!!! info
    You can use a combination of `ls` and `cd` to change into your notes directory, but this is
    outside the scope of this guide.
!!! warning
    See [troubleshooting](./troubleshooting.md#navigating-to-directory-using-cd-and-ls) if you're having trouble navigating to your notes directory.

### Check for new changes on remote using fetch

1. Run ```git fetch```

!!! info
    ```git fetch``` may have no output. This will happen if there are no new changes and
    is normal. You can proceed to the next step in this case.

!!! success
    The following is an example of success output of the ```git fetch``` 
    command if new changes were found on the remote repository:
    ```
    $ path/to/your/notes (main) git fetch
    remote: Enumerating objects: 13, done.
    remote: Counting objects: 100% (13/13), done.
    remote: Compressing objects: 100% (6/6), done.
    remote: Total 9 (delta 3), reused 9 (delta 3), pack-reused 0
    Unpacking objects: 100% (9/9), 2.93 KiB | 2.93 MiB/s, done.
    From https://github.com/your-username/notes
       4a30534..37487b7  main       -> origin/main
    ```
    
### Pull your newly fetched changes

!!! info
    ```git pull``` may output: 
    ```Already up to date```
    This signifies that no changes were pulled from remote and you're all synced up.

!!! success
    The following is an example of success output of the ```git pull``` 
    command if new changes were found on the remote repository:
    ```
    $ path/to/your/notes (main) git pull
    Updating 7a32534..37eb7b7
    Fast-forward
     intro-to-programming/project.js | 68 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     1 file changed, 68 (+) insertions
     create mode 100644 docs/initializeRepo.md
    ```
You're good to go! Once you finish working, make sure to follow the *Pushing changes to remote*
section of this guide to keep things synced up.

## Pushing changes to remote

Let's assume you've finished working on a project
```notes/intro-to-programming/project.js``` at home and would like to make sure
you sync up your progress for the next time you work on it in class.

Logging onto your home computer, we would do the following steps before we
begin work:

### Navigate to your repository

1. Open up your terminal, running bash or a shell equivalent.
2. Navigate to your notes directory. Your shell should look something like:
```$ path/to/your/notes (main) ```

!!! info
    You can use a combination of `ls` and `cd` to change into your notes directory, but this is
    outside the scope of this guide.
!!! warning
    See [troubleshooting](./troubleshooting.md#navigating-to-directory-using-cd-and-ls) if you're having trouble navigating to your notes directory.

### Consider what you want to sync

When using Git, we can specify what we would like Git to track using a ```.gitignore``` file.
In a ```.gitignore``` file, we can specify a series of file paths. Any files found at these
paths will be ignore by Git when you're adding your changes to remote.

!!! warning
    ```.gitignore``` is often used in order to keep our secrets, such as passwords and
    sensitive information secure by not adding them to GitHub. This is especially imporant
    when using a public repository, where anyone could see your notes.

In most cases, you'd like to push everything in your repository. 

There are some cases where you may want to add files to your ```.gitignore```.

Since this should be a private repository, we can be less secure about our secrets and passwords,
although it can be good practice to ignore them either way.

It's also important that we add large files to our ```.gitignore```. GitHub has a file size
limit, and even if we aren't hitting the limit, syncing large videos and images can take an extremely
amount of time.d

Let's say we have a file ```secrets.txt``` where we store sensitive data, and it is located in at
```notes/intro-to-programming/secrets.txt```.

We also have a large video file ```large-video.mp4``` located at
```notes/intro-to-programming/large-video.mp4```.

Let's setup Git so that these files are ignored by default.

1. Create a new .gitignore file at ```notes/intro-to-programming/.gitignore```
2. In the .gitignore file, add the following:
```
secrets.txt # sensitive data
large-video.mp4 # too large!
```

!!! info
    ```.gitignore``` files have multiple paths! Let's say we have a lot of secrets:
    ```
    secrets.txt 
    large-video.mp4
    evenMoreSecrets.txt
    tooManySecrets.txt
    ```

!!! warning
    Although this protects these files from being on our repository, they won't be synced
    up across our different devices, as they won't be placed on our remote. For this reason,
    having a private repository can make secret handling much easier, but large files are still
    problematic.

### Add your new changes

At this point, it's good to have a mental checklist before we start adding and pushing our changes.

1. Make sure you've pulled any changed from remote first. Git will not let
   you continue otherwise. See the section [pulling changes from
   remote](#pulling-changes-from-remote) for details.
2. You've considered if there's anything you'd like to keep secret, and
   you ```.gitignore``` file is setup accordingly.
3. We are in the right location in our terminal. We should be in the same
   place as where you ran ```git init``` when first creating your
   repository, or the place where you ran ```git clone``` to pull down
   your repository onto a new computer.

To add our changes and push them to remote, we can run the following
commands:

1. Run ```git add .```

    !!! Success
        ```git add .``` will have no output, but it will prepare any changes 
        you've made in the repository to be pushed to remote. If you'd like
        to see some confirmation that this action succeded, run ```git status```
        and look for **Changes to be commited:**

2. Run ```git commit -m "some commit message"```
    
    Replace ```"some commit message"``` with something that describes the new changes. 
    Commit messages shine when working collaboratively, and may not be as useful
    in this context. 

    !!! info
        In the [using a script](./usingScript.md) section we
        solve this commit message problem by automatically including a commit message based on the date.

 3. Run ```git push```. Your changes should now be up to date with your local machine on
     remote!

    !!! warning
        If you see the following output:
        ```
        git push
        To https://github.com/your-username/notes
         ! [rejected]        main -> main (fetch first)
        error: failed to push some refs to 'https://github.com/your-username/notes.git
        ```
        You have forgotten to fetch and pull before adding notes or commiting them. This
        is okay and will happen often. See [troubleshooting](./troubleshooting.md#missing-credentials) for help.

## Conclusion 

In this section you have learned how to:

- Pulling changes from remote
- Pushing changes to remote repository
- Navigating folders and directories
- Using Git commands 

Nice work! ✅ You can now move onto the next section, [Using a script to automate note syncing](./usingScript.md).

