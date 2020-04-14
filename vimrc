set nocompatible ""Disable vi compatibility
filetype on "Avoids bug when comiting stuff
filetype off "Force reloading of stuff after pathogen is loaded

execute pathogen#infect()
execute pathogen#helptags()

""Make actionscript syntax works
syntax on
filetype plugin indent on
au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufRead *.hx set filetype=haxe
au BufNewFile,BufRead *.json set filetype=json

""Visual help stuff
set nu
set ai
set lcs=tab:>-,eol:$
set list
set incsearch ""Set incremental search
set hlsearch ""Highlight search results
set ignorecase ""Ignore capital letters when searching in all lower case
set smartcase ""Search using capital letter if a capital letter was typed on search
set encoding=utf-8 nobomb "Avoids BOM and make sure to always use utf-8

""More custom options
set history=999
set undolevels=999
set nobackup
set nowritebackup
set noswapfile
set laststatus=2
set mouse=nicr
""No timeout between shortcut keys
set notimeout
""Disabling modelines since I never really use them and they can be a security concern
set nomodeline

""Formating...
set expandtab ""Insert space chars instead of tab
set autoindent smartindent ""Hope this make indenting stuff easier
set copyindent
set tabstop=4 ""Default number of spaces a tab takes
set shiftwidth=4
set softtabstop=4 ""Allow deletion of whole tabs
set backspace=indent,eol,start
set wildignore+=*.orig,*.svn,*.hg,*.git,*.pyc ""Ignore all these annoying extensions
set wildignore+=*/node_modules/*
set wildignore+=*/bower_components/*

""Activate different settings for different file types
autocmd FileType js,json set expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html,htmldjango,xml,ctp set noexpandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType actionscript,haxe,php set noexpandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd BufNewFile,BufRead *.md,*.mkdn,*.markdown :set filetype=markdown

""Ignore these types of files
set wildignore+=*.o,*.obj,.git,*.png,*.PNG,*.JPG,*.jpg,*.GIF,*.gif,*.pdf,*.mp3,*.avi,*.mp4,*.webm,*.pyc

let g:solarized_use16 = 1
set background=dark
colorscheme solarized8

""Uses system clipboard for yanking, only works with vim 7.3+
set clipboard+=unnamed

"" Set the leader to comma
let mapleader=","
let g:mapleader=","

"" Set easy motion to use only one leader stroke
let g:EasyMotion_leader_key = '<Leader>'

"" Change signify default navigation keys
let g:signify_mapping_next_hunk = '<C-m>'
let g:signify_mapping_prev_hunk = '<C-p>'
let g:signify_mapping_toggle_highlight = '<C-g>'
let g:signify_mapping_toggle = '<C-t>'

"" I don't want any buffkill keymap
let g:BufKillCreateMappings = 0

"" Uses eslintme
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_generic = 1
let g:syntastic_javascript_eslint_exec = 'eslintme'
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_javascript_tslint_exec = 'tslint -t stylish'

let g:statline_obsess = 1

"" Python setup
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

"" Make arrow keys works for wrapped lines$
map <up> gk
map <down> gj

"" Remap tab on normal mode to switch between buffers
nnoremap <silent> <tab> <C-^>

"" Better nerdtoolbar shortcut$
nnoremap <silent> <leader><tab> :NERDTreeToggle<cr>

"" Remap ctrl-p shortcuts
nnoremap <silent> <leader>g :CtrlP<cr>
nnoremap <silent> <leader>h :CtrlPBuffer<cr>

"" Gundo map
set undofile
set undodir=~/.vim/undo
nnoremap <F5> :MundoToggle<CR>

"" Configs splitjoin keys
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

"" Moving block selection
xmap <C-k> :mo'<-- <CR> gv
xmap <C-j> :mo'>+ <CR> gv

nnoremap <C-N> :tabnew<cr>
nnoremap <C-x> :tabclose<cr>

"" Make arrows switch between buffers
nnoremap <Left> :bprevious<CR>
nnoremap <Right> :bnext<CR>

" :w!!
" write the file when you accidentally opened it without the right (root) privileges
cmap w!! w !sudo tee % > /dev/null

"" 80chars line
if exists("&colorcolumn")
  set colorcolumn=80
endif

