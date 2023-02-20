require('user.settings')
require('user.mappings')
require('user.plugins')

vim.opt.termguicolors = true
vim.cmd('colorscheme melange')

vim.api.nvim_create_autocmd('BufRead,BufNewFile', {
    pattern = '*/rtossed/**',
    command = 'so .vimrc'
  })
