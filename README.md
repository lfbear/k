# k
a shell tool for kubectl contexts switch quickly, alias for `kebectl config use-context`

## Prepare
The tool depends `kubectl`, assume that you can already use `kebectl`

## Install

### Way 1:
#### step 1. get code to your local

`git clone https://github.com/lfbear/k`

#### step 2. copy shell script

`cp k/k.sh ~/.kube/k.sh`

#### step 3. add script to your base start(choose one of the following)

**[linux bash]** `echo ". ~/.kube/k.sh" >> ~/.bashrc && source ~/.bashrc` 

**[Darwin native bash]** `echo ". ~/.kube/k.sh" >> ~/.bash_profile && source ~/.bash_profile` 

**[zsh for linux or Darwin]** `echo ". ~/.kube/k.sh" >> ~/.zshrc && source ~/.zshrc` 

### Way 2

todo

## Usage

### show all available k8s clusters
`# k`

### switch the clusters naming `dev`
`# k dev`
then, u can use `kubectl` to do anything you want

![usage screenshot](https://github.com/lfbear/k/blob/main/cmd.jpg?raw=true)
