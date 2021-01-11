ln -s $HOME/dotfiles/.bashrc $HOME/.bash_profile
ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc

# npm dependencies that I'm not likely to live without
npm install -g jsonlint
npm install -g eslint
npm install -g eslint_d
npm install -g eslintme
npm install -g http-server
npm install -g ipt
npm install -g ntl
npm install -g fkill-cli
npm install -g localtunnel
npm install -g diff-so-fancy
npm install -g svg-term
npm install -g json
npm install -g vmd

# vim setup
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Go to bundle folder
cd ~/.vim/bundle/
ln -s ~/.vim/bundle ~/.config/nvim/bundle

# Get all plugins
git clone https://github.com/vim-scripts/bufkill.vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/rking/ag.vim
git clone https://github.com/editorconfig/editorconfig-vim.git
git clone https://github.com/simnalamburt/vim-mundo.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/syntastic.git
echo "Syntastic will rely on code validation tools, such as jshint"
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/lifepillar/vim-solarized8
git clone https://github.com/Lokaltog/vim-easymotion.git
git clone https://github.com/nvie/vim-flake8.git
git clone https://github.com/mhinz/vim-signify.git
git clone https://github.com/ruyadorno/vim-statline.git
git clone https://github.com/AndrewRadev/splitjoin.vim.git
git clone https://github.com/godlygeek/tabular.git
git clone https://github.com/elzr/vim-json.git
git clone https://github.com/ruyadorno/vim-change-indent.git
git clone https://github.com/groenewege/vim-less.git
git clone https://github.com/ap/vim-css-color.git
git clone https://github.com/hail2u/vim-css3-syntax
git clone https://github.com/othree/html5.vim.git
git clone https://github.com/othree/yajs.vim.git
git clone https://github.com/vim-scripts/SyntaxComplete.git
git clone https://github.com/othree/javascript-libraries-syntax.vim.git
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/nathanaelkane/vim-indent-guides.git
git clone https://github.com/ekalinin/Dockerfile.vim.git
git clone https://github.com/rizzatti/dash.vim.git
git clone https://github.com/tpope/vim-obsession.git
git clone https://github.com/leafgarland/typescript-vim.git
git clone https://github.com/christoomey/vim-tmux-navigator.git

