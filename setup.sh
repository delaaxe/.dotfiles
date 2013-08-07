for file in .{bash_profile,gitignore,gitconfig,vim,vimrc,inputrc}; do
  #ln -s ~/.dotfiles/$file ~/$file 
  if [ -e ~/$file ]; then
    echo "~/$file: already exists, not linked."
  else
    echo "~/$file: linked."
  fi
done
unset file
