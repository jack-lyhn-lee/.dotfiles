" ======= vim keybindings =======
" open-fuzzy-finder     SPC .
" open-tab              SPC t
" auto-format           SPC f
" next-tab              TAB
" prev-tab              SHFT TAB

" setup plugins
call plug#begin('~/.vim/plugged')
Plug 'rafi/awesome-vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Chiel92/vim-autoformat'
call plug#end()

" setup lightline
set laststatus=2
let g:lightline = {
            \ 'colorscheme': 'deus',
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

" setup deoplete
let g:deoplete#enable_at_startup=1
inoremap <expr><up> pumvisible() ? "\<esc><up>" : "\<up>"
inoremap <expr><down> pumvisible() ? "\<esc><down>" : "\<down>"
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" setup autoformat
nnoremap <silent><space>f :Autoformat<cr>

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
colorscheme onedark
filetype plugin indent on

" fix backspace on mac
set backspace=indent,eol,start

" use system clipboard
set clipboard=unnamed
