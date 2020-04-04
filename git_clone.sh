#!/bin/bash

# Example of script to initialize a new directory and clone project from github
# github remote example: git@github.com:github_user_name/github_project_name.git

read -p "Write your github user name: " github_user_name
read -p "Write your github project name: " github_project_name
read -p "What directory do you want to save the project? Blank to
curent_directory: " directory

if [ -z ${directory} ]; then
  current_dir=${PWD}
  mkdir "${current_dir}/${github_project_name}"
  echo "Directory ${github_project_name} created on: ${current_dir}"
  cd "${current_dir}/${github_project_name}"
  git init
  git remote add origin
  git@github.com:${github_user_name}/${github_project_name}.git
else
  mkdir "${github_project_name}"
  echo "Directory ${github_project_name} created on: ${current_dir}"
fi;









