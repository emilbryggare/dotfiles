if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

##
# Your previous /Users/emilbryggare/.bash_profile file was backed up as /Users/emilbryggare/.bash_profile.macports-saved_2016-09-05_at_14:35:58
##

# MacPorts Installer addition on 2016-09-05_at_14:35:58: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# added by Anaconda3 4.1.1 installer
export PATH="/Users/emilbryggare/anaconda3/bin:$PATH"

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
