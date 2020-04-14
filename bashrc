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
alias tree='tree -I node_modules'

# set vim as default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# vi mode on terminal
set -o vi

# Add a token for increased usage of brew
export HOMEBREW_GITHUB_API_TOKEN=

# My utils functions
source $HOME/Documents/repos/dotfiles/utils
. $HOME/Documents/repos/z/z.sh

# Manual npm-prefix setup
WORKSPACE_DIR="$HOME/Documents/workspace"
NPM_CLI="$WORKSPACE_DIR/cli"
export npm_config_prefix="$HOME/npm-prefix"
export npm_config_binroot="$npm_config_prefix/bin"
export npm_config_manroot="$npm_config_prefix/share/man"
PATH=$npm_config_prefix/bin:$PATH
export PATH
alias npm="node $NPM_CLI"

# gpg setup requirement
export GPG_TTY=$(tty)

# export path for ccache
export PATH="/usr/local/brew/opt/ccache/libexec:$PATH"
