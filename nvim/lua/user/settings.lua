local set = vim.opt

set.autoindent = true
set.number = true
set.relativenumber = true
set.wildmode = {'longest','list'}
set.mouse = 'a'
set.cursorline = true
set.ttyfast = true
set.scrolloff = 8
set.sidescrolloff = 8
set.signcolumn = 'yes'
set.updatetime = 50
set.tabstop = 8
set.shiftwidth = 8

vim.cmd [[
  filetype plugin indent on
  syntax on
]]
