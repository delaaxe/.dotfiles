for file in ~/.dotfiles/.{extra,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# enable ctrl-a etc
set -o emacs

# for z
. ~/.dotfiles/z.sh
