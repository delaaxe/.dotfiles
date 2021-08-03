if v:progname =~? "evim"
  finish
endif

" Vundle stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'AutoComplPop'
Bundle 'better-snipmate-snippet'
Bundle 'xmledit'
Bundle 'ctrlp.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim'}
Bundle 'camelcasemotion'
Bundle 'delimitMate.vim'
"Bundle 'AutoClose'
"Bundle 'Syntastic'
Bundle 'SearchComplete'
Bundle 'Tabular'
Bundle 'repeat.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'argtextobj.vim'
Bundle 'vim-indent-object'

" colors
Bundle 'altercation/vim-colors-solarized'
Bundle 'jellybeans.vim'
Bundle 'neverland.vim--All-colorschemes-suck'
Bundle 'vividchalk.vim'
Bundle 'mayansmoke'
Bundle 'pyte'

" custom installed
Bundle 'grep-operator.vim'

filetype plugin indent on

" UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showcmd
set showmode
set number
set laststatus=2
set mouse=a
set title
set ruler "Always show current position
set hlsearch "Highlight search things
set cmdheight=2 "The commandbar height
set scrolloff=5 " Set 10 lines to the curors - when moving vertical..
set sidescrolloff=15
set sidescroll=1
syntax on " Colors 
set wildmenu "Turn on WiLd menu
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set background=light
    "let g:solarized_visibility="high"
    "let g:solarized_visibility="high"
    "let g:solarized_contrast="high"
    colorscheme pyte
else
    colorscheme pyte
    "set background=dark
endif

" Behavior
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=eol,start,indent "Set backspace config
set nobackup
set noswapfile
set nowritebackup
set history=5000
set incsearch "Make search act like search in modern browsers
set autoread " Set to auto read when a file is changed from the outside
set gdefault " Add the g flag to search/replace by default
set hidden "Change buffer - without saving
set lazyredraw " don't redraw while executing macros
set matchtime=2

" folding
set foldmethod=indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" completion
set complete=.,b,u,]
set wildmode=longest,list:longest
set completeopt=menu,preview
" pressing enter just selects
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Allow the cursor to go in to "invalid" places
"set virtualedit=all
set visualbell
set sessionoptions=blank,curdir,folds,tabpages,winpos,winsize

" Text
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set ignorecase
set smartcase
set linebreak
set textwidth=80
set autoindent "Auto indent
set smartindent "Smart indet
set nowrap "Wrap lines
set encoding=utf-8
set whichwrap+=<,>,h,l
set magic "Set magic on, for regular expressions
set shell=/bin/bash
try
  lang en_US
catch
endtry
set fileformats=unix,dos,mac "Default file types
" Folding
set foldlevel=2

" Windows, tabs, buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify the behavior when switching between buffers 
try
    "set switchbuf=useopen,usetab,newtab
    "set switchbuf=useopen,newtab
    set showtabline=2 " always display tabs
catch
endtry
" Remember info about open buffers on close
"set viminfo^=%
" Format the status line
"set statusline=\ %F%m%r%h\ %w\ \ cwd\ %r%{getcwd()}%h\ \ \ Line:\ %l
"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk
" make Y more logical
nnoremap Y y$
" remap jk to escape in insert mode
inoremap jk <Esc>
vnoremap jk <Esc>
inoremap JK <Esc>
vnoremap JK <Esc>

" don't use escape
"inoremap <esc> <nop>
" goto tag with enter in normal mode
nnoremap <cr> <c-]>

let mapleader=","
let g:mapleader=","
" toggle switch buffers
nmap <silent> <leader><leader> :b#<cr>
" ,; -> toggle nerd commenter
nmap <silent> <leader>; ,c<space>
" ,c => comment
" cd in the directory of the current buffer
nmap <silent> <leader>cd :cd %:h<cr>
" coffee
"nmap <silent> <leader>co :CoffeeCompile<cr>
" Toggle paste mode on and off
nmap <silent> <leader>p :setlocal paste!<cr>
" turn off search highlight
nmap <silent> <leader>h :set invhls<cr>:set hls?<cr>
" toggle invisible characters
nmap <silent> <leader>l :set list!<cr>
" delete all buffers
nmap <silent> <leader>da :exec "1," . bufnr('$') . "bd"<cr>
" edit vimrc
nmap <silent> <leader>ev :e $MYVIMRC<cr>
" tagbar
nmap <leader>t :TagbarOpenAutoClose<cr>
" make
nmap <leader>m :make<cr>

" move between windows
if has('mac')
    nnoremap Ï <C-W>j
    nnoremap È <C-W>k
    nnoremap Ì <C-W>h
    nnoremap ¬ <C-W>l
else
    nnoremap <M-j> <C-W>j
    nnoremap <M-k> <C-W>k
    nnoremap <M-h> <C-W>h
    nnoremap <M-l> <C-W>l
endif
" move between buffers / tabs
map <C-j> :bn<cr>
map <C-k> :bp<cr>
map <C-h> :tabp<cr>
map <C-l> :tabn<cr>
" a la firefox tab switching
map <C-Tab> :tabn <CR>
map <C-S-Tab> :tabp <CR>
" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
"fix ctrl-i
"unmap <c-i>
" eclipse-style auto completion
imap <C-space> <cr>

" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

func! NoNerdTreeScrollOff()
    if &filetype == 'nerdtree'
        setlocal scrolloff=0 " Set 10 lines to the curors - when moving vertical..
        setlocal sidescrolloff=0
    endif
endfunc
augroup custom
    autocmd!
    " pressing enter in quickfix show result
    autocmd BufReadPost quickfix nnoremap <buffer> <cr> :.cc<cr>
    autocmd BufEnter * :call NoNerdTreeScrollOff()
augroup END


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Delete trailing white space on save, useful for Python and CoffeeScript
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Auto source vimrc
augroup myvimrc
    autocmd!
    autocmd BufWritePost .vimrc,_vimrc,.gvimrc,_gvimrc source $MYVIMRC
    "if has('gui_running')
    "    source $MYGVIMRC
    "endif
augroup END


" Plugin setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" acp
let g:acp_behaviorSnipmateLength = 1

" NERDTree
"nmap t :NERDTree<cr>
"nmap t <c-w>w
"au VimEnter * NERDTree
"nmap <leader>t :NERDTreeToggle<cr>
let NERDTreeShowBookmarks=1


function! GotoNERDTree()
    if &filetype == 'nerdtree'
        "execute "normal! <c-w>l"
        wincmd l
        return
    endif
    for i in tabpagebuflist()
        if match(bufname(i), '^NERD_') == 0 
            9wincmd h
            return
        endif
    endfor
    NERDTree
endfunction
nmap <leader>n :call GotoNERDTree()<cr>

