" Dillion Nason
" Neovim configuration
" Originally based on a tutorial by Jess Archer

" general settings
" ----------------------------------------------------------------

set autoindent
set number
set wildmode=longest,list
filetype plugin indent on
syntax on
set mouse=a
set cursorline
set ttyfast
set scrolloff=8
set sidescrolloff=8

" key bindings
" ----------------------------------------------------------------

let mapleader = "\<space>"

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>
nmap <leader>vi :PlugInstall<cr>
nmap <leader>ff :FZF<cr>

" allow gf to open non-existent files
map gf :edit <cfile><cr>

vnoremap < <gv
vnoremap > >gv

" quick exact to normal
imap jj <esc>

" easy insertion of ; or , from insert mode
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>

" plugins
" ----------------------------------------------------------------
" Install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin("~/.config/nvim/plugged")

source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/gruvbox.vim

Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yggdroot/indentline'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'DingDean/wgsl.vim'
Plug 'arm9/arm-syntax-vim'

call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
autocmd VimEnter * hi Normal ctermbg=none

au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = arm6/7
