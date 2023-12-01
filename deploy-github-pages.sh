#!/bin/bash
# deploy gh-pages branch

function console_blue() {
    echo -e "\033[36m[ $1 ]\033[0m"
}

function console_green() {
    echo -e "\033[32m[ $1 ]\033[0m"
}

function console_orangered() {
    echo -e "\033[31m\033[01m[ $1 ]\033[0m"
}

function console_yellow() {
    echo -e "\033[33m\033[01m[ $1 ]\033[0m"
}

base_path=$(cd `dirname $0`; pwd)
cd $base_path

my_branch='gh-pages'
current_time=`date +"%Y-%m-%d %H:%M:%S"`
my_repo_1='git@gitee.com:pudongping/hugo-blog.git'
my_repo_2='git@github.com:pudongping/hugo-blog.git'

console_blue 'Deploy starting ......'

rm -rf public
hugo

cd ./public
git init
git remote add origin $my_repo_1
git remote set-url --add origin $my_repo_2
git add -A && git commit -s -m "Site updated: ${current_time}"

git checkout -b $my_branch
git push -f -u origin $my_branch

console_green "Congratulations, deploy successful!"

exit 0