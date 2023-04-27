require('user.settings')
require('user.mappings')
require('plugins.packer')

vim.opt.termguicolors = true

vim.cmd('colorscheme gruber-darker')

vim.api.nvim_create_autocmd('BufRead,BufNewFile', {
    pattern = '*/rtossed/**',
    command = 'so .vimrc'
})
