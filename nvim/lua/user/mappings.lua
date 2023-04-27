local map = vim.keymap

vim.g.mapleader = ' '

map.set('n', '<C-d>', ':Ex<cr>')
map.set('n', '<C-q>', ':bd<cr>')

map.set('n', 'gf', ':edit <cfile><cr>')
map.set('n', '<leader>ss', ':split<cr>')
map.set('n', '<leader>sv', ':vsplit<cr>')

map.set('v', '<', '<gv')
map.set('v', '>', '>gv')

map.set('i', ';;', '<Esc>A;<Esc>')
map.set('i', ',,', '<Esc>A,<Esc>')

map.set('n', '<A-Down>', ':m+<cr>==')
map.set('n', '<A-Up>',   ':m-2<cr>==')
map.set('v', '<A-Down>', ":m '>+1<cr>gv=gv")
map.set('v', '<A-Up>',   ":m '<-2<cr>gv=gv")
