# terminal color theming
if [ "$NAVE" == "" ]; then NAVE="macos"
fi
PS1='\[\033[31m\]\u\[\033[33m\]@$NAVE\[\033[32m\] \w \[\033[37m\]'
unset color_prompt force_color_prompt

export HISTCONTROL=ignorespace

# configure some useful paths
PATH=/usr/local/bin:$HOME/bin:$PATH
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
[ -d "$HOME/dotfiles" ] && source $HOME/dotfiles/utils
[ -d "$HOME/Documents/repos/dotfiles" ] && source $HOME/Documents/repos/dotfiles/utils
[ -d "$HOME/Documents/repos/z" ] && . $HOME/Documents/repos/z/z.sh

# Manual npm-prefix setup
export npm_config_prefix="$HOME/npm-prefix"
export npm_config_binroot="$npm_config_prefix/bin"
export npm_config_manroot="$npm_config_prefix/share/man"
PATH=$npm_config_prefix/bin:$PATH

# gpg setup requirement
export GPG_TTY=$(tty)

# export path for ccache
export PATH="/opt/homebrew/opt/ccache/libexec:$PATH"

# Homebrew bootstrap
eval "$(/opt/homebrew/bin/brew shellenv)"
