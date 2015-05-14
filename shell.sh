#!/bin/bash

# Path

export PATH="$PATH:/Users/Taylor/.composer/vendor/bin"

# Aliases

alias gs='git status -s'
alias code='cd ~/Documents/Code'
alias dots='st ~/.dotfiles/shell.sh'
alias vm='ssh vagrant@127.0.0.1 -p 2222'
alias he='st ~/.homestead/Homestead.yaml'
alias nah='git reset --hard; git clean -df;'
alias lara='cd ~/Documents/Code/Laravel/laravel'
alias framework='cd ~/Documents/Code/Laravel/framework'
alias hp='cd ~/Documents/Code/Homestead && vagrant provision'

# Copy laravel/framework to laravel/laravel vendor directory...

laracopy () {
	rm -rf ~/Documents/Code/Laravel/laravel/vendor/laravel/framework
	rsync --quiet -r ~/Documents/Code/Laravel/framework/* ~/Documents/Code/Laravel/laravel/vendor/laravel/framework
	echo "Copied!"
}
