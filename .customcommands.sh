#!/bin/bash

function create() {
    cd
    cd Documents/dev
    mkdir $1
    cd $1
    git init
    touch readme.md 
    git add .
    git commit -m "init commit"
    python /home/timo/create.py $1
    git remote add origin https://yourusername:githubpassword@github.com/yourusername/$1  #replace yourusername and githubpassword with your creidantials!
    git push --set-upstream origin master
    clear
    code .
}
