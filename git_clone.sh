#!/bin/bash

# Example of script to initialize a new directory and clone project from github
# github remote example: git@github.com:github_user_name/github_project_name.git
# Author: Diogo

read -p "Write your github user name: " github_user_name
read -p "Write your github project name: " github_project_name
read -p "What directory do you want to save the project? Blank to
curent_directory: " directory

create_project_directory()
{
  mkdir "${1}/${2}"
  echo "Directory ${2} created on: ${1}"
}

initialize_git()
{
  git init
}

config_git_remote()
{
  git remote add origin git@github.com:${1}/${2}.git
}

pull_repository()
{
  git pull origin master
}

if [ -z ${directory} ]; then
  current_dir=${PWD}
  create_project_directory $current_dir $github_project_name
  cd "${current_dir}/${github_project_name}"
  initialize_git
  config_git_remote $github_user_name $github_project_name
  pull_repository
else
  mkdir "${github_project_name}"
  echo "Directory ${github_project_name} created on: ${current_dir}"
fi;
