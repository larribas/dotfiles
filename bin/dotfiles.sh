#!/bin/bash

action=$1

files=( 
  .gitconfig
  .gitignore_global
  .vimrc
  .zshrc
  .config/omf/init.fish
)

# Make sure the script exits if any variables are unset
set -u

copy_files () {
  for file in "${files[@]}"
  do
    origin_file="$1/$file"
    destination_file="$2/$file"

    origin_dir=$(dirname $origin_file)
    destination_dir=$(dirname $destination_file)

    mkdir -p $destination_dir
    cp $origin_file $destination_file
  done
}

case ${action} in
  retrieve)
    copy_files ~ .
    ;;
   
  deploy)
    copy_files . ~
    ;;
    
esac

