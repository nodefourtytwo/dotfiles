set number
set nowrap
set showbreak=+++
set textwidth=100
set showmatch
set visualbell

set hlsearch
set smartcase
set ignorecase
set incsearch
set path+=**

set autoindent
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set expandtab

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

set ruler

set undolevels=1000
set backspace=indent,eol,start

set splitbelow
set splitright

set inccommand=nosplit

set termguicolors
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

call plug#begin('~/.config/nvim/plugged')
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'gavocanov/vim-js-indent'
Plug 'elzr/vim-json'
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neomake/neomake'
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'othree/jspc.vim'
Plug 'townk/vim-autoclose'
Plug 'ervandew/supertab'
Plug 'ekalinin/Dockerfile.vim'
Plug 'mhinz/vim-startify'
call plug#end()

" ------------------------------------------------
"  Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
" ------------------------------------------------
" Autocompletion
let g:deoplete#enable_at_startup = 1

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" ------------------------------------------------
" Linting
"let g:neomake_javascript_enabled_makers = ['eslint']
"autocmd! BufWritePost * Neomake
"let g:neomake_open_list   = 0
"let g:neomake_serialize = 0
"let g:neomake_airline = 0
"let g:neomake_error_sign    = { 'text': '⚑' }
"let g:neomake_warning_sign = { 'text': '⚑' }

" ------------------------------------------------
" keyboard shortcuts
vnoremap <C-c> "+y
vnoremap <C-x> "+d
noremap <C-v> v"+p
vnoremap <C-v> "+p
inoremap <C-v> <C-O>"+p
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
" map <silent> <C-n> :NERDTreeToggle<CR>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" deoplete tab-complete
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
hi Normal guibg=NONE ctermbg=NONE
