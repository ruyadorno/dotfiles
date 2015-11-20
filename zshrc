# load zgen
source "${HOME}/Documents/repos/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/osx
    zgen load zsh-users/zsh-syntax-highlighting

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen load mafredri/zsh-async
    zgen load sindresorhus/pure

    PURE_GIT_PULL=0

    # save all to init script
    zgen save
fi

source "${HOME}"/.bash_profile

