local map = vim.keymap

vim.g.mapleader = ' '

map.set('n', '<leader>ve', ':edit ~/.config/nvim/init.lua<cr>')
map.set('n', '<leader>vr', ':luafile ~/.config/nvim/init.lua<cr>')
map.set('n', '<leader>vi', ':PlugInstall<cr>')
map.set('n', '<leader>fn', ':FloatermNew<cr>')
map.set('n', '<leader>ft', ':FloatermToggle<cr>')
map.set('n', '<leader>dv', ':DiffviewOpen<cr>')
map.set('n', '<leader>dq', ':DiffviewClose<cr>')

map.set('n', 'gf', ':edit <cfile><cr>')
map.set('n', '<leader>ss', ':split<cr>')
map.set('n', '<leader>sv', ':vsplit<cr>')

map.set('v', '<', '<gv')
map.set('v', '>', '>gv')

map.set('i', ';;', '<Esc>A;<Esc>')
map.set('i', ',,', '<Esc>A,<Esc>')
