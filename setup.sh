#!/bin/bash

insert_config() {
	if [ -f $3 ]
	then
		read -r -p "Do you want to replace $1 ? [Y/n]" response
		response=${response,,}
		if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
			rm $3
		else
			printf "\e[93m$1 skipped\e[0m\n"
		fi
	fi
	if [ ! -f $3 ]
	then
		ln -s $2 $3
		printf "\e[32m$1 linked\e[0m\n"
	fi
}

insert_config .zshrc ~/dotfiles/zsh/zshrc ~/.zshrc
insert_config .gitconfig ~/dotfiles/git/gitconfig ~/.gitconfig

insert_config sshconfig ~/dotfiles/ssh/config ~/.ssh/config
