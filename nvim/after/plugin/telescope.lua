require('telescope').setup {
  defaults = {
    layout_strategy = 'bottom_pane',
    layout_config = { 
      bottom_pane = {
        height = 50,
        prompt_position = "bottom"
      },
      cursor = {
        height = 0.9,
        width = 0.8
      }
    },
  },
  pickers = {
    treesitter = {
      theme = "center",
    },
  },
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ts', builtin.treesitter, {})
vim.keymap.set('n', '<leader>bi', builtin.builtin, {})

vim.keymap.set('n', '<leader>m', ":lua require(\'telescope.builtin\').man_pages({ sections = { \"3\" },man_cmd = { \"apropos\", \".\" }})<cr>")
