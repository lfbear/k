# k
a shell tool for switch kubectl contexts

## Prepare
Fisrt, the tool depends `kubectl`, assume that you have ready for using `kebectl`

## Install

### Way 1:
1.get code to your local

`git clone https://github.com/lfbear/k`

2.copy shell script

`cp k/k.sh ~/.kube/k.sh`

3.add script to your base start(choose one of the following)

`echo ". ~/.kube/k.sh" >> ~/.bashrc` #linux bash

`echo ". ~/.kube/k.sh" >> ~/.bash_profile` #Darwin native bash

`echo ". ~/.kube/k.sh" >> ~/.zshrc` #zsh for linux or Darwin

### Way 2
