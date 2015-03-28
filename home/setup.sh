# Setup Homeshick
if [ ! -d "~/.homesick/repos/homeshick" ]
then
		git clone git://github.com/andsens/homeshick.git ~/.homesick/repos/homeshick
fi
source "~/.homesick/repos/homeshick/homeshick.sh"
homeshick clone emilbryggare/dotfiles
homeshick symlink
source "~/.bashrc"

# Install Vundle for VIM
if [ ! -d "~/.vim/bundle/Vundle.vim" ]
then
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
