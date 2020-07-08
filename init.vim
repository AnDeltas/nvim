set relativenumber
set number

"**************shortcut****************

inoremap <S-DEL> <Esc>ddi
inoremap <S-CR> <Esc>o
noremap <C-r> :Rg<cr>
noremap <C-f> :Files<CR>
noremap <C-a> ggVG
noremap <C-s> :w!<CR>
noremap <C-q> :wq<CR>
noremap ; $
noremap ' ^
inoremap jf <Down><CR>

"**************shortcut****************


let g:python3_host_prog='~/anaconda3/bin/python3.7'

" Plugins
"
call plug#begin('~/.config/nvim/autoload')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"*************    ncm2      ***********************
"
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
set shortmess+=c
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

"This ncm2 plugin provide words from current buffer for completion.
Plug 'ncm2/ncm2-bufword'
"Path complete
Plug 'ncm2/ncm2-path'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ncm2/ncm2-vim-lsp'

"Python completion for ncm2 via the great jedi library.
Plug 'ncm2/ncm2-jedi'
" own vimscript

"*************    ncm2      ***********************


call plug#end()


