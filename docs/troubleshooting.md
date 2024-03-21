# Troubleshooting Guide

This section aims to help you quickly identify and resolve common issues you might face. Each problem is described along with its probable cause and a step-by-step solution to help you resolve the issue efficiently.

## Computer feels slower than usual

If you notice that your computer is running slower than usual, it might be due to accidentally initializing a Git repository in a directory with a large number of files. Here's how you can diagnose and fix this issue:

### Symptoms

- Computer is running slower than usual
- A delay in running commands and opening files

### Probable cause

Ran `git init` in the wrong directory

### Recommended solution

1. `cd` into the folder that you mistakenly ran `git init`
2. run `rmdir /s .git` on Windows or `rm -rf .git` on macOS or Linux
