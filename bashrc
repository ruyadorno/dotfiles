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

export NVM_DIR="$HOME/.nvm";[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm use --silent 10

