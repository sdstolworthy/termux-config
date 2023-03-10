install: install_essential_packages clone_workspace_configuration link_configuration_files
	echo "Configuring termux"
	
install_essential_packages:
	echo "Installing required packages"
	pkg install git neovim python python-pip nodejs build-essential

clone_workspace_configuration: install_essential_packages
	echo "Cloning configuration files"
	- git clone https://github.com/sdstolworthy/dotfiles.git ~/dotfiles

link_configuration_files: clone_workspace_configuration
	echo "Linking configuration files"
	- ln -s "${HOME}/dotfiles/vimrc" "${HOME}/.config/nvim/init.vim"
	- ln -s ${HOME}/dotfiles/lua ${HOME}/.config/nvim/

	
	
