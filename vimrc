" VIMRC
set number
set mouse=a
set relativenumber
set hidden
let mapleader = " "
set smartindent

set tabstop=4
set shiftwidth=4 smarttab
set expandtab 
filetype indent on
filetype plugin on

nnoremap <C-c> :w<CR>:!g++ % -std=c++17 && ./a.out<CR>
nnoremap <C-n> :Explore<CR>
nnoremap <C-p> :Files<CR>
nnoremap <leader>r :w<CR>:make run<CR>

syntax on
set background=dark
colorscheme habamax
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

" autocmd FileType rust set makeprg=cargo\ build
" autocmd FileType rust set errorformat=%f:%l:%c:\ %m

" Set the compiler to rustc and define the errorformat for Rust
autocmd FileType rust compiler cargo
autocmd FileType rust set errorformat=%f:%l:%c:%t:%m

" Navigate to the next entry in the Quickfix list
nnoremap <leader>n :cnext<CR>

" Navigate to the previous entry in the Quickfix list
nnoremap <leader>p :cprev<CR>

" Open the Quickfix list
nnoremap <leader>q :copen<CR>

" Close the Quickfix list
nnoremap <leader>Q :cclose<CR>


