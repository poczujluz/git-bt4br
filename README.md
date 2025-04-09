# Assignment 5 - GitHub

**Name:** Paula Konowalska
**Date:** 09/04/2025

This repository contains my assignment for class about learning Git commands and version control.

# Git basics

## Introduction
Git is a powerful version control system which allows you to manage and track changes in your codebase. It enables cooperation with other users and tracking of project history.

## Basic git commands

### 1. **Initializing a Git repository**
    To create new Git repository, you can use the following command in a new rpoject directory:
    ```bash
    git init 
    ```

### 2. **Checking the status of repository**
    To check current state of your working directory, use:
    ```bash
    git status 
    ```

### 3. **Adding changes**
    To add files to commit:
    ```bash
    git add <file_name> 
    ```

### 4. **Commit changes** 
    To commit added changes with commit message, use:
    ```bash
    git commit -m "Message" 
    ```
    
### 5. **Viewing commit history**
    To view commit historyl, use:
    ```bash
    git log 
    ```

### 6. **Pushing changes**
    To push changes, use:
    ```bash
    git push origin main 
    ```

### 7. **Pulling changes**
    To pull repository with the newest changes, use:
    ```bash
    git pull origin main 
    ```
    
### 8. **Branches**
    - To create a new branch, use:  
     ```bash  
     git branch <branch_name>  
     ```
    - To another branch:  
     ```bash  
     git checkout <branch_name>  
     ```
