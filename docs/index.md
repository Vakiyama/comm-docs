# Introduction

Welcome🙌 This documentation will guide you through how to set up a [GitHub](https://github.com/) repository. The goal of this documentation is to provide clear and easy instructions, ensuring that anyone regardless of their level of experience on [GitHub](https://github.com/) can easily follow through this guide. In addition to the setup process, we will also focus on best practices while using a [shell](./glossary.md) and a script that can automate common GitHub processes for you.

> :material-github: [GitHub](https://github.com/) is a web-based platform designed to streamline version control and collaboration for software development projects.
> Developers can efficiently manage and track changes in their code, foster collaboration with team members, and conveniently host their repositories online.

> [Shell](./glossary.md) is a program where commands can be used to search for files and directories that are stored on the computer. The shell can also be used for a variety of tasks.
> In this documentation we will use the shell to run commands that will set up a repository on GitHub.

## Intended Users

This documentation is intended for the following user groups:

- Beginners to intermediate developers aiming to set up and organize their projects.
- Software development teams working on crafting small to medium-sized web applications.

## Prerequisite Knowledge

This documentations assumes the following:

- Comfort with terminal commands for basic operations.
- Knowing your way around a shell environment and terminal.
- Able to keep track of files and directories in the computer.

## Software Requirements

- [Visual Studio Code](https://code.visualstudio.com/download) or any other code editor
- [GitHub](https://github.com/) Account
- A [Shell](./glossary.md) such as [git bash](https://git-scm.com/downloads) for Windows and Linux or alternatively [zsh](https://ohmyz.sh/).

## Procedures Overview
The order in which to follow this documentation:

- [Initialize Repository](initializeRepo.md)
- [Using Repository](useRepo.md)
- [Using Script](usingScript.md)

## Typographical Conventions

- Some warning code blocks may have links on the bottom to the [Troubleshooting](troubleshooting) page.

!!! warning
    If you accidentally added the wrong remote URL, check out the [troubleshooting](troubleshooting.md#wrong-remote-url) section.

- The success message may display when a command has **no output** in the shell, to help confirm there is no error.
!!! success

    ```git add .``` will have no output, but it will prepare any changes you've made in the repository to be pushed to remote.
- Comments will contain terminology, each comment will contain the term with a link to the glossary.
  > [term](./glossary.md)

## Notes and Warning Messages

In this documentation, message blocks will be used to inform you of important information. These message blocks are ranked in decending order of importance.

!!! danger
    This is a danger message block.

    Make sure to pay close attention to the information provided here.

!!! warning
    This is a warning message block.

    Please take the necessary precautions based on the information provided.

!!! info
    This is an information message block.

    Pay attention to the details provided here for additional information.

!!! success
    This is a success message block.

    :white_check_mark: Celebrate! :white_check_mark:
