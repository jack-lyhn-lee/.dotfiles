" ======= vim keybindings =======
" open-fuzzy-finder	<space>-.
" open-file-tree	<space>-f
" open-tab		    <space>-t
" next-tab		    <tab>
" prev-tab		    <shift>-<tab>
" auto-format       <ctrl>-f

" install plugins
call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/defx.nvim'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Chiel92/vim-autoformat'
call plug#end()

" setup lightline
set laststatus=2
set background=dark
let g:lightline = {
            \ 'colorscheme': 'nord',
            \ }

" setup ctrlp
let g:ctrlp_map='<space>.'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git)$',
            \ 'file': '\v\.(exe|so|dll|zip|gz|swp|swo})$'
            \ }

" setup defx
nnoremap <space>f :Defx<cr>
autocmd filetype defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    nnoremap <silent><buffer><expr> <cr> 
                \ defx#is_directory() ?
                \ defx#do_action('open_or_close_tree') :
                \ defx#do_action('open')
    nnoremap <silent><buffer><expr> <esc>
                \ defx#do_action('quit')
endfunction

" setup deoplete
let g:deoplete#enable_at_startup=1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
inoremap <expr><up> pumvisible() ? "\<esc><up>" : "\<up>"
inoremap <expr><down> pumvisible() ? "\<esc><down>" : "\<down>"

" setup autoformat
nnoremap <silent><c-f> :Autoformat<cr>

" setup keybindings
nnoremap <silent><space>t :tabe<cr>
nnoremap <silent><tab> :tabn<cr>
nnoremap <silent><s-tab> :tabp<cr>

" setup appearance
set number
set relativenumber
set cursorline
set noshowmode
set noshowcmd
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
colorscheme solarized
