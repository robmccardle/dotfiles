# My dotfiles. Kept in ~/.dotfiles

# User specific environment and startup programs - Enables MySQL Shell on Local
export PATH="$HOME/bin:$PATH"

# Use Sublime Text 2 recommendation - https://gist.github.com/1236170
export PATH="/usr/local/bin:$PATH"

# Recommended by homebrew
export PATH="/usr/local/sbin:$PATH"

# Required by pear
export PATH="$HOME/pear/bin:$PATH"

# Terminal Colours
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacadx

# Handy "extract" for any type of archive
function extract()      
{
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1     ;;
             *.tar.gz)    tar xvzf $1     ;;
             *.bz2)       bunzip2 $1      ;;
             *.rar)       unrar x $1      ;;
             *.gz)        gunzip $1       ;;
             *.tar)       tar xvf $1      ;;
             *.tbz2)      tar xvjf $1     ;;
             *.tgz)       tar xvzf $1     ;;
             *.zip)       unzip $1        ;;
             *.Z)         uncompress $1   ;;
             *.7z)        7z x $1         ;;
             *)           echo "'$1' cannot be extracted via >extract<" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# Show GIT branch in Terminal
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\[\e[01;31m\]\w \$(parse_git_branch): \[\e[00m\]"

#Separate aliases out into a separate file
source ~/.dotfiles/.aliases

# Needed for RBENV
eval "$(rbenv init -)"
