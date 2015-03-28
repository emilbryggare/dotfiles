# Setup Homeshick
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick clone emilbryggare/dotfiles
homeshick symlink
source "$HOME/.bashrc"

# Install Vundle for VIM
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
