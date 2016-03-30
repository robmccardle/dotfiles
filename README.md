# ~/.dotfiles

Dotfiles for bash aliases and profile. You're welcome to borrow my settings yeah :)

<br />

To use, clone this repo from GitHub into your users home directory with:

     git clone https://github.com/robmccardle/dotfiles.git ~/.dotfiles

Create a symbolic link to the bash profile from it's usual location with:

     ln -s ~/.dotfiles/.bash_profile ~/.bash_profile 

Create a symbolic link to the global gitignore from it's usual location with:

     ln -s ~/.dotfiles/.gitignore_global ~/.gitignore_global 

Remember to either restart Terminal/iTerm or `source` to flush your settings via:

    source ~/.bash_profile
