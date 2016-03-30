#####################################################################################
#
#  Suggested Bash Profile settings for Mac OSX Terminal/iTerm  
#  ----------------------------------------------------------
#
#  To use, clone this repo from GitHub into your users home directory with:
#
#     git clone https://github.com/robmccardle/dotfiles.git ~/.dotfiles
#
#  Create a symbolic link to the bash profile from it's usual location with:
#
#     ln -s ~/.dotfiles/.bash_profile ~/.bash_profile 
#
#  Remember to either restart Terminal/iTerm or `source` to flush hese settings via:
#
#    source ~/.bash_profile
#
#
#####################################################################################

# User specific environment and startup programs - Enables MySQL Shell on Local
export PATH="$HOME/bin:$PATH"

# Needed for Sublime & Homebrew (amongst others)
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Terminal Colours
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacadx

# Handy "extract" for most types of archive
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

# Show GIT branch in Terminal header
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\[\e[01;31m\]\w \$(parse_git_branch): \[\e[00m\]"

#Separate aliases out into a separate file
source ~/.dotfiles/.aliases


# Ruby, Node & PHP Environments
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$HOME/.nodenv/bin:$PATH
export PATH=$HOME/.phpenv/bin:$PATH
eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(phpenv init -)"

# Google Cloud SDK
# Updates PATH
source '~/google-cloud-sdk/path.bash.inc'
# Enables shell command completion
source '~/google-cloud-sdk/completion.bash.inc'
