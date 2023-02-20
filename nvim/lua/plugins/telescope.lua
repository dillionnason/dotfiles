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
  extensions = {
    file_browser = {
      hijack_netrw = true,
    },
    coc = {
        theme = 'cursor',
        prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
    }
  }
}

require('telescope').load_extension('file_browser')
require('telescope').load_extension('coc')

local builtin = require('telescope.builtin')
local file_browser = require('telescope').extensions.file_browser
local coc = require('telescope').extensions.coc

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', file_browser.file_browser, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ts', builtin.treesitter, {})
vim.keymap.set('n', '<leader>bi', builtin.builtin, {})
vim.keymap.set('n', '<leader>ca', coc.code_actions, {})

vim.keymap.set('n', '<leader>m', ":lua require(\'telescope.builtin\').man_pages({ sections = { \"3\" },man_cmd = { \"apropos\", \".\" }})<cr>")
