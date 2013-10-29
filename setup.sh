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
#on os x:
#echo ". ~/.dotfiles/.local.bash" >> ~/.bash_profile
echo ".local.bash: linked."
