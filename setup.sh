for file in .{vim,vimrc,ideavimrc,inputrc}; do
  if [ -e ~/$file ]; then
    echo "~/$file: not linked, already exists."
  else
    ln -s ~/.dotfiles/$file ~/$file 
    echo "~/$file: linked."
  fi
done
unset file

ln -s ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

echo "source ~/.dotfiles/.local.bash" >> ~/.zshrc
echo ".local.bash: linked."
