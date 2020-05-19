#!/bin/bash

ghusername = yourusername #put your github username in here
ghpass = yourpassword #put your github password in here

function create() {
    cd
    cd Documents/dev
    mkdir $1
    cd $1
    git init
    touch readme.md 
    git add .
    git commit -m "init commit"
    python ./create.py $1 
    git remote add origin https://$ghusername:$ghpass@github.com/$ghusername/$1  
    git push --set-upstream origin master
    clear
    code .
}
