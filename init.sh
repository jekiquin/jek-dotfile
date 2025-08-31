#!/bin/bash

CWD=$(pwd)
echo "Current working directory: ${CWD}"
HAS_APT_UPDATED=0

add_border() {
	echo "=========================================================================================================="
}

add_breaks() {
	echo -e "\n"
}

run_apt_update() {
	if [ $HAS_APT_UPDATED -eq 0 ]; then
		sudo apt update
		HAS_APT_UPDATED=1
	else
		echo "apt update already ran"
	fi
}

install_fish() {
	add_border
	echo "Installing fish..."
	# update this release if you want to
	# sudo apt-add-repository ppa:fish-shell/release-4 -y
	# run_apt_update
	# sudo apt install fish -y

	# Change the path below if error occurs
	local fish_installation_path="/usr/bin/fish"

	add_breaks
	echo "Updating default shell to fish..."
	echo "${fish_installation_path}" | sudo tee -a /etc/shells
	# chsh -s "${fish_installation_path}" 

	add_breaks
	local fish_original_path="${CWD}/fish"
	local fish_config_path="${HOME}/.config/fish"
	if [ ! -d "${fish_config_path}" ]; then
		echo "Creating fish config path..."
		mkdir "${fish_config_path}"
	fi
	ln -s "${fish_original_path}/config.fish" "${fish_config_path}/config.fish"	
	ln -s "${fish_original_path}/additional/" "${fish_config_path}/additional/"	

	add_breaks
	echo "Installing fish utils..."
	fish << 'END_FISH'
		echo "Installing fisher package manager for fish..."
		curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

		echo "Installing tide for fish..."
		fisher install IlanCosman/tide@v6

		echo "Installing nvm for node..."
		fisher install jorgebucaran/nvm.fish
		echo "Installing lts version of Node..."
		nvm install lts
		nvm use lts

		echo "Installing forgit tui..."
		fisher install wfxr/forgit
END_FISH


}

install_utils() {
	add_border
	echo "Installing utils..."
	run_apt_update

	add_breaks
	echo "Installing zoxide..."
	curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

	add_breaks
	echo "Installing fzf from git..."
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install

	add_breaks
	echo "Installing bat - cat with wings..."
	sudo apt install bat -y
	mkdir -p $HOME/.local/bin
	ln -s /usr/bin/batcat $HOME/.local/bin/bat

	add_breaks
	echo "Installing neovim..."
	sudo apt install neovim -y
}

install_all() {
	install_utils || echo "Something went wrong on your utils installation"
	install_fish || echo "Something went wrong on your fish installation"
}


case "$1" in
	fish)
		install_fish
		;;
	utils)
		install_utils
		;;
	"")
		echo "Installing all of them, you greedy bastard"
		install_all
		;;
	*)
		echo "You are just wrong!! wrong wrong wrong!!"
		;;
	
esac

add_border
