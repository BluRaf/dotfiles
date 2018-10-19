# ~/.bash_profile

if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
