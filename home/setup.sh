# Setup Homeshick
if [ ! -d "$HOME/.homesick/repos/homeshick" ]
then
		git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
fi
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick clone emilbryggare/dotfiles
homeshick symlink
source "$HOME/.bashrc"

# Install Vundle for VIM
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]
then
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
