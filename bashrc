# terminal color theming
PS1='\[\033[31m\]\u\[\033[33m\]@macbookpro\[\033[32m\] \w \[\033[37m\]'
unset color_prompt force_color_prompt

# configure some useful paths
PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH

# neovim alias
alias vim='nvim'

# common mistakes
alias gti='git'
alias got='git'

# set vim as default editor
export VISUAL=nvim
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

