# terminal color theming
PS1='\[\033[31m\]\u\[\033[33m\]@\h\[\033[32m\] \w \[\033[37m\]'
unset color_prompt force_color_prompt

# configure some useful paths
PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH

# set macvim for use on terminal
alias vim='mvim -v'

# common mistakes
alias gti='git'
alias got='git'

# set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# vi mode on terminal
set -o vi

# Define homebrew-installed browsers paths
export CHROME_BIN=
export FIREFOX_BIN=

# Don't let sindresorhus/pure automatically pull git repos
export PURE_GIT_PULL=0

# Add a token for increased usage of brew
export HOMEBREW_GITHUB_API_TOKEN=

# My utils functions
source $HOME/Documents/repos/dotfiles/utils
. $HOME/Documents/repos/z/z.sh

