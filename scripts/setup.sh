# /bin/sh

set -e

if [ "$1" != "uninstall" ]
then
  ln -s ~/src/dotfiles/zshrc.sh ~/.zshrc
  ln -s ~/src/dotfiles/gitconfig ~/.gitconfig
else
  unlink ~/.zshrc
  unlink ~/.gitconfig
fi
