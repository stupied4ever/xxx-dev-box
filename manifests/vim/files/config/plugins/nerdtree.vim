" Shortcuts to open NERDTree
nnoremap <C-n> :NERDTreeToggle<cr>
vnoremap <C-n> :NERDTreeToggle<cr>

" Auto-open if Vim is called without parameters
autocmd vimenter * if !argc() | NERDTree | endif
