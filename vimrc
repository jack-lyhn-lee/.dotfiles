" ======= vim keybindings =======
" open-fuzzy-finder     SPC .
" open-file-tree        SPC f
" open-tab              SPC t
" next-tab              TAB
" prev-tab              SHFT TAB
" auto-format           CTRL f

" setup plugins
call plug#begin('~/.vim/plugged')
Plug 'rafi/awesome-vim-colorschemes'
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
let g:lightline = {
            \ 'colorscheme': 'seoul256',
            \ }

" setup ctrlp
let g:ctrlp_map='<space>.'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git)$',
            \ 'file': '\v\.(exe|so|dll|zip|gz|swp|swo|png|pdf)$'
            \ }
let g:ctrlp_prompt_mappings = {
            \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
            \ 'AcceptSelection("t")': ['<cr>'],
            \ }

" setup defx
nnoremap <space>f :Defx -show-ignored-files -split=vertical -resume<cr>
autocmd filetype defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    nnoremap <silent><buffer><expr> <cr>
                \ defx#is_directory() ?
                \ defx#do_action('open_or_close_tree') :
                \ defx#do_action('multi', ['quit', ['drop', 'tabe']])
    nnoremap <silent><buffer><expr> <esc>
                \ defx#do_action('quit')
endfunction

" setup deoplete
let g:deoplete#enable_at_startup=1
inoremap <expr><up> pumvisible() ? "\<esc><up>" : "\<up>"
inoremap <expr><down> pumvisible() ? "\<esc><down>" : "\<down>"
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" setup autoformat
nnoremap <silent><c-f> :Autoformat<cr>

" setup keybindings
nnoremap <silent><space>t :tabe<cr>
nnoremap <silent><tab> :tabn<cr>
nnoremap <silent><s-tab> :tabp<cr>
nnoremap <silent>d "_d
vnoremap <silent>d "_d

" setup appearance
set number
set relativenumber
set cursorline
set noshowmode
set noshowcmd
set splitbelow
set expandtab
set tabstop=4
set shiftwidth=4
set background=dark
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"
colorscheme deus
filetype plugin indent on
