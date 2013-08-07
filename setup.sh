for file in .{gitignore,gitconfig,vim,vimrc,inputrc}; do
  if [ -e ~/$file ]; then
    echo "~/$file: not linked, already exists."
  else
    ln -s ~/.dotfiles/$file ~/$file 
    echo "~/$file: linked."
  fi
done
unset file
echo ". ~/.dotfiles/.local.bash" >> ~/.bashrc
echo ".local.bash: linked."
