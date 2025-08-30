#!/bin/bash

install_fish() {
	echo "Installing fish"
	# update this release if you want to
	sudo apt-add-repository ppa:fish-shell/release-4
	sudo apt update
	sudo apt install fish

	# Change the path below if error occurs
	local fish_installation_path="/usr/bin/fish"

	echo "Updating default shell to fish"
	
	echo  "${fish_installation_path}" | sudo tee -a /etc/shells
	chsh -s "${fish_installation_path}" 
}

install_all() {
	install_fish || echo "Something wen't wrong on your fish installation"
}


case "$1" in
	fish)
		install_fish
		;;
	"")
		echo "Installing all of them, you greedy bastard"
		install_all
		;;
	*)
		echo "You are just wrong!! wrong wrong wrong!!
		;;
	
esac
