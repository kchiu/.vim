execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

:map <F4> :NERDTreeToggle<CR>
" autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

:map <F5> :TlistToggle<CR>
:let Tlist_Show_One_File = 1
:let Tlist_Exit_OnlyWindow = 1
:let Tlist_Use_Right_Window = 1 

" http://www.zwiener.org/vimautocomplete.html
set completeopt=menu,menuone,longest
set pumheight=15
let g:SuperTabDefaultCompletionType = "context"
let g:clang_complete_auto = 0
let g:clang_complete_copen = 0
let g:clang_user_options = '|| exit 0'
let g:clang_library_path = "/usr/local/lib/"
let g:clang_debug = 0

set nu
set colorcolumn=80
set smartindent
set cursorline
colorscheme mustang

" http://vim.wikia.com/wiki/Automatically_append_closing_characters
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide
nmap <leader>a <Esc>:Ack!

" https://github.com/klen/python-mode
let g:pymode_folding = 0
let g:pymode_rope_guess_project = 0

" https://github.com/wincent/Command-T
set wildignore+=*.o,*.obj,.git,.svn,*.ko
let g:CommandTMaxFiles=100000
