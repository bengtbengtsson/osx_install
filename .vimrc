" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Show two lines of status bar.
set laststatus=2

" remap <space> to <leader>
let mapleader = "\<Esc>"

" NFA engine, regex
" This prevents slow response for e.g. tsx-files
set regexpengine=2

" Start NERDTree when Vim is launched without file arguments
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Always use system clipboard
set clipboard=unnamed
"
" Support for autoformatting code.
""let g:python3_host_prog="/opt/homebrew/bin/python3"
"au BufWrite * :Autoformat

" Prevent ctrlP from searching in node_modules
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" Gruvbox
set bg=dark
autocmd vimenter * ++nested colorscheme gruvbox

" set filetypes as typescriptreact
" autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number relativenumber

" turn relative line numbers on
" set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Set shift width to 2 spaces.
set shiftwidth=2

" Set tab width to 2 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch
set matchpairs+=[:],{:},(:),<:>

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'github/copilot.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
" " NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
" nnoremap <F3> :NERDTreeToggle<cr>
nnoremap <leader>c :CtrlP<cr>
nnoremap <leader>n :Explore<cr>
nnoremap <leader>b :buffers<cr>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"inoremap { { }<Esc>hi
"inoremap [ [ ]<Esc>hi
"inoremap ( ( )<Esc>hi
"inoremap " " "<ESC>hi
"inoremap ' ' '<ESC>hi
"inoremap ` ` `<ESC>hi

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END


" More Vimscripts code goes here.
function! GetGitBranch()
  let branchname = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
  return strlen(branchname) ? ' [' . branchname . ']' : ''
endfunction


" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P%{GetGitBranch()}

" }}}
