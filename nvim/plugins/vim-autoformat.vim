Plug 'vim-autoformat/vim-autoformat'

let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_whitespaces = 0

nmap <leader>cf :Autoformat<cr>
vmap cf :Autoformat<cr>
