# k
A shell tool for kubectl contexts switch quickly, alias for `kebectl config use-context`

## Prepare
The tool depends `kubectl`, assume that you can already use `kebectl`

## Install

### Way 1:

`curl https://raw.githubusercontent.com/lfbear/k/main/install.sh | bash`

### Way 2

#### step 1. get code to your local	

`git clone https://github.com/lfbear/k`

#### step 2. copy shell script	

`cd k && sh install.sh`	

### Create a Quick Command

Add `source ~/.kube/k.sh` to the bottom of your bash startup files, this file locate at one of the following file
- **[linux bash]** `~/.bashrc` 
- **[Darwin native bash]** `~/.bash_profile` 
- **[zsh for linux or Darwin]** `~/.zshrc`
- ...

## Usage

### show all available k8s clusters
`# k`

### switch the clusters naming `dev`
`# k dev`

then, u can use `kubectl` to do anything you want

### screenshot

![usage screenshot](https://github.com/lfbear/k/blob/main/cmd.jpg?raw=true)

## Extension

### How to use contenxts in kube config file

https://kubernetes.io/docs/tasks/access-application-cluster/configure-access-multiple-clusters/

