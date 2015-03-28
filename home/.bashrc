set_prompts() {
    local black=""
    local blue=""
    local bold=""
    local cyan=""
    local green=""
    local orange=""
    local purple=""
    local red=""
    local reset=""
    local white=""
    local yellow=""

    local hostStyle=""
    local userStyle=""

    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        tput sgr0 # reset colors

        bold=$(tput bold)
        reset=$(tput sgr0)

        # Solarized colors
        # (https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized#the-values)
        black=$(tput setaf 0)
        blue=$(tput setaf 33)
        cyan=$(tput setaf 37)
        green=$(tput setaf 64)
        orange=$(tput setaf 166)
        purple=$(tput setaf 125)
        red=$(tput setaf 124)
        white=$(tput setaf 15)
        yellow=$(tput setaf 136)
    else
        bold=""
        reset="\e[0m"

        black="\e[1;30m"
        blue="\e[1;34m"
        cyan="\e[1;36m"
        green="\e[1;32m"
        orange="\e[1;33m"
        purple="\e[1;35m"
        red="\e[1;31m"
        white="\e[1;37m"
        yellow="\e[1;33m"
    fi

    # build the prompt

    # logged in as root
    if [[ "$USER" == "root" ]]; then
        userStyle="\[$bold$red\]"
    else
        userStyle="\[$orange\]"
    fi

    # connected via ssh
    if [[ "$SSH_TTY" ]]; then
        hostStyle="\[$bold$red\]"
    else
        hostStyle="\[$yellow\]"
    fi

    # set the terminal title to the current working directory
    PS1="\[\033]0;\w\007\]"

    PS1+="\n" # newline
    PS1+="\[$userStyle\]\u" # username
    PS1+="\[$reset$blue\]@"
    PS1+="\[$hostStyle\]\h" # host
    PS1+="\[$reset$blue\]: "
    PS1+="\[$green\]\w" # working directory
    PS1+="\$(__git_ps1)"
    PS1+="\n"
    PS1+="\[$reset$blue\]\$ \[$reset\]" # $ (and reset color)

#    export PS1
}

set_prompts
unset set_prompts

source "~/.homesick/repos/homeshick/homeshick.sh"
source "~/.git-prompt.sh"
homeshick --quiet refresh

# Increase bash history size
export HISTSIZE=10000
export HISTFILESIZE=10000

# Always save history
PROMPT_COMMAND='history -a'

# Do not save duplicates, and do not save lines beginning with space
export HISTCONTROL=ignorespace:erasedups
