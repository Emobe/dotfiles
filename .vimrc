syntax on 
filetype plugin indent on

set nocompatible

let mapleader = ","

" ================ Indentation ======================
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
filetype plugin indent on

"Remove swaps and backup
set nobackup
set noswapfile
set nowb
set viminfo=""

set undodir=~/.vim/undo/

set number
set incsearch
set laststatus=2

set wrap linebreak nolist

"Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-surround'
"Plugin 'OmniSharp/omnisharp-vim'

"Plugin 'bling/vim-airline'
"Plugin 'guileen/vim-node-dict'
"Plugin 'kien/ctrlp.vim'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'myusuf3/numbers.vim'
"Plugin 'powerline/powerline'
"Plugin 'mxw/vim-jsx'
"Plugin 'prettier/vim-prettier'
"Plugin 'ternjs/tern_for_vim'
"Plugin 'tpope/vim-abolish'
"Plugin 'janko-m/vim-test'
"Plugin 'jalcine/cmake.vim'
"Plugin 'vim-scripts/groovy.vim'
"Plugin 'yssl/QFEnter'
"Plugin 'tomlion/vim-solidity'
"Plugin 'isRuslan/vim-es6'
"Plugin 'epilande/vim-react-snippets'
"Plugin 'epilande/vim-es2015-snippets'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"bufferness
set hidden

"open empty buffer
nmap <leader>T :enew<CR>

"next buffer
nmap <leader>l :bnext<CR>

"prev buffer
nmap <leader>h :bprevious<CR>

"close buffer, move to prev
nmap <leader>bq :bp <BAR> bd #<CR>

"show buffers
nmap <leader>bl :ls<CR>

"window selection
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>

nmap <silent> <A-Right> :wincmd l<CR>

" set to 256 colours
set t_Co=256

" remove preview window
set completeopt-=preview

"Show hidden files in nerdtree
let NERDTreeShowHidden=1

nmap <C-p> :GFiles<CR>

"Stop annoying delay for new line etc.
"set timeoutlen=100

"Use ag with ack plugin
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"ALE
let g:ale_fixers = {
      \'vue': ['eslint'],
      \'javascript': ['eslint'],
      \'typescript': ['tslint']
\}
let g:ale_fix_on_save = 1

"Airline
let g:airline_powerline_fonts = 1

"Deoplete
"let g:deoplete#enable_at_startup = 1
