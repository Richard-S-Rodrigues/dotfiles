#!/usr/bin/bash

if [[ -d ~/dotfiles ]] 
then
  sudo rm -r ~/dofiles
fi

cd ~
git clone https://github.com/Richard-S-Rodrigues/dotfiles.git
cd dotfiles

cp -r ~/.config/nvim/ .config/
cp -r ~/.config/fish/ .config/
cp -r ~/.config/i3/config .config/i3
cp -r ~/.tmux.conf .tmux.conf

git init
git add .
echo "Enter a commit message:"
read commit_msg
git commit -m "$commit_msg"
git config credential.helper store
git push

cd ~
sudo rm -r dotfiles

