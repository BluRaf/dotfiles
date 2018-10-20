# ~/.bashrc - bash config file

export WINEARCH='win32'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Current Git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Prompt
usercolorchar=$(whoami|cut -c1)

colorrst=$(tput sgr0)
usercolor=$colorrst
[ $usercolorchar = "r" ] && usercolor=$(tput setaf 1)
[ $usercolorchar = "b" ] && usercolor=$(tput setaf 4)

PS1='[${?}] \[${usercolor}\]\u\[${colorrst}\]!\l@\h:\w$(parse_git_branch) \$ '


# Basic aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# Additional aliases
alias fixmic="sudo rmmod -f snd_hda_intel && sudo modprobe snd_hda_intel"
alias fat="du -h ~ --max-depth=2 | sort -h"

# Remove incompatible Steam Runtime libraries
if [[ -x /usr/bin/steam ]]; then
    alias fixsteamrt='find ~/.steam/root/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" -o -name "libgpg-error.so*" \) -print -delete'
    alias fixsteamrtlocal='find ~/.local/share/Steam/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" -o -name "libgpg-error.so*" \) -print -delete'
fi

fortune bofh-excuses

