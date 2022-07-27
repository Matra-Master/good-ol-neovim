
"=============================
"=============VimPlugs========
"=============================
"
" Install vim-plug if not found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.config/nvim/plugged')

Plug 'frazrepo/vim-rainbow'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'             "Autocompletion Plugin
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'         "LSP Source for nvim-cmp
Plug 'saadparwaiz1/cmp_luasnip'     "Snippets source for nvim-cmp
Plug 'L3MON4D3/LuaSnip'             "Snippets plugin
Plug 'junegunn/fzf'
Plug 'stsewd/fzf-checkout.vim'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'
Plug 'ThePrimeagen/harpoon'
Plug 'weilbith/nvim-lsp-smag'
Plug 'jwalton512/vim-blade'
Plug 'antonk52/gitignore-grabber.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'alok/notational-fzf-vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'oberblastmeister/neuron.nvim'
call plug#end()

let mapleader = "\<space>"

