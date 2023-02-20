vim.cmd[[
  let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
  if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
]]

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/config/nvim/plugged')

vim.cmd 'source ~/.config/nvim/plugins/coc.vim'
vim.cmd 'source ~/.config/nvim/plugins/vimwiki.vim'
vim.cmd 'source ~/.config/nvim/plugins/floaterm.vim'
vim.cmd 'source ~/.config/nvim/plugins/vim-autoformat.vim'
vim.cmd 'source ~/.config/nvim/plugins/vim-headerguard.vim'

Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { branch = 'master' })
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' })
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug 'fannheyward/telescope-coc.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'yggdroot/indentline'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'DingDean/wgsl.vim'
Plug 'arm9/arm-syntax-vim'
Plug 'tikhomirov/vim-glsl'
Plug 'sindrets/diffview.nvim'

--THEMES
Plug 'Everblush/nvim'
Plug 'savq/melange-nvim'

vim.call('plug#end')

require('plugins.airline')
require('plugins.telescope')
