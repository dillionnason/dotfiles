Plug 'drmikehenry/vim-headerguard'

" c++ header guards
nmap <leader>hg :HeaderguardAdd<cr>

function! g:HeaderguardName()
    return toupper(expand('%:t:gs/[^0-9a-zA-Z_]/_/g'))
endfunction

function! g:HeaderguardLine3()
    return "#endif // " . g:HeaderguardName() . ""
endfunction
