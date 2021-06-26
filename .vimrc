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


autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
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

""ALE
"let g:ale_fixers = {
"      \'vue': ['eslint'],
"      \'javascript': ['eslint'],
"      \'typescript': ['eslint']
"\}
"let g:ale_fix_on_save = 1

"Airline
"let g:airline_powerline_fonts = 1

let g:NERDTreeQuitOnOpen = 1

let g:coc_global_extensions = ['coc-tsserver']


"Coc
" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')

" Run jest for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

" Run jest for current test
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>

" Init jest in current cwd, require global jest command exists
command! JestInit :call CocAction('runCommand', 'jest.init')

"Typescript
let g:typescript_compiler_binary = 'tsc'

"C#
autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)



let g:preview_uml_url='http://localhost:8888'

