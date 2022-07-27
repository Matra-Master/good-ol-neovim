" RE-SETS and useful changes
syntax enable
set relativenumber
set nohlsearch
set nu
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set autoread
set smartindent
set copyindent
set nowrap
set noswapfile
set nobackup
set incsearch
set termguicolors
set scrolloff=4
set signcolumn=yes
set updatetime=100
set ignorecase
set smartcase
set shortmess+=c
set showtabline=2
set mouse=a
set cursorline
set clipboard+=unnamedplus
set undodir=~/.config/nvim/undodir
set splitbelow splitright
set list
set listchars=tab:▸\ ,trail:·
set confirm
set emoji

let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'

"	Enables 'enhanced mode' of command-line completion. When user hits
"	<Tab> (or 'wildchar') to invoke completion, the possible matches are
"	shown in a menu just above the command-line (see 'wildoptions'), with
"	the first match highlighted (overwriting the statusline).
set wildmode=longest,full
set wildmenu
"Wild Menu ignore
"	A list of file patterns.  A file that matches with one of these
"	patterns is ignored when expanding |wildcards|, completing file or
"	directory names, and influences the result of |expand()|, |glob()| and
"	|globpath()| unless a flag is passed to disable this.
set wildignore+=**/.git/*


"Autosets and stuff
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

"Color Settings
colorscheme gruvbox
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE
