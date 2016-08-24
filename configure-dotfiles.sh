#!/bin/sh

symlink_dotfiles(){
  for name in dotfiles/.*; do
    file=$(basename $name)
    target="$HOME/$file"

    # skip directories
    if [ -d "$name" ]; then
      continue
    fi

    # unlink symlink if it exists
    if [ -e "$target" ]; then
      echo "Removing symlink $target"
      unlink "$target"
    fi

    echo "Symlinking $name"
    ln -s "$PWD/dotfiles/$file" "$target"
  done
}

symlink_dotfiles
