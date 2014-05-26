" Coster's .vimrc
set nocompatible
set modelines=0

let mapleader = ","
inoremap jj <ESC>
colorscheme koehler

" Manage buffers more effectively
set hidden

" Add bottom scrollbar
set go+=b

" Color scheme and font
set background=dark

" show incomplete command in the lower right corner for when i forget insane vim commands
set showcmd

" Tab settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Syntax Highlighting on
syntax on

if has("gui_running")
  set lines=50 columns=190
endif

" Proper fonts
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 9
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
else
  set guifont=Monaco:h14
endif


" Search options
set ignorecase
set smartcase
set incsearch

" Key remaps
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

