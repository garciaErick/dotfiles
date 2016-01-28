set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mhinz/vim-startify'           "Startup screen for vim
Plugin 'bling/vim-airline'            "Eye-candy for vim status
Plugin 'scrooloose/syntastic'         "Syntax Cheking
Plugin 'scrooloose/nerdTree'          "IDE-like file manager
Plugin 'ctrlpvim/ctrlp.vim'           "IntelliJ-like file searching
Plugin 'tpope/vim-surround'           "Surround with characters with cs command
Plugin 'tpope/vim-commentary'         "Comment plugin by gcc command
Plugin 'tpope/vim-markdown'           "Markdown syntax highlighting
Plugin 'terryma/vim-multiple-cursors' "Sublime text-like multiple cursors
Plugin 'Valloric/YouCompleteMe'       "Autocomplete as you type
Plugin 'junegunn/vim-easy-align'      "Alignnent plugin with <ga>
Plugin 'jiangmiao/auto-pairs'         "Auto-closing brackets plugin
Plugin 'xolox/vim-notes'              "Note taking in vim
Plugin 'xolox/vim-misc'               "Xolox plugins dependencies
" Vim Snipmate Dependencies
Plugin 'vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate' 
call vundle#end()            " required

" ================ General Config ====================
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir
set background=dark
set backspace=indent,eol,start
set gcr=a:blinkon0
set noshowmode
set hidden
set number
set autoread 
set visualbell
set t_Co=256
set pastetoggle=<F2> "To enter paste mode to avoid indent issues
colorscheme base16-material-dark
let base16colorspace=256  " Access colors present in 256 colorspace
syntax enable
syntax on
let g:enable_bold_font=1
" Highlighting
hi Search cterm=bold,underline ctermfg=blue ctermbg=black
"hi Comment cterm=none ctermfg=blue ctermbg=black
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
set mouse=a

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>
filetype plugin on
filetype indent on
" Turn off auto insert comments
augroup auto_comment
  au!
  au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END
" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Scrolling ========================
set scrolloff=20         "Start scrolling when we're x lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Startify ====================
let g:startify_custom_header = [
      \'     ██████████████ 	',
      \'     ██▓▓▓▓▓▓▓▓▓ L ▓████     ----------------------',
      \'   ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██   (  H  o  l  a          )',
      \'  ██████░░░░██░░██████      (    E  r  i  c  k     )',
      \'██░░░░████░░██░░░░░░░░██    (         づ｡◕‿‿◕｡)づ  )',  
      \'██░░░░████░░░░██░░░░░░██   o ----------------------', 
      \'   ████░░░░░░██████████  o',
      \'   ██░░░░░░░░░░░░░██  o',
      \'     ██░░░░░░░░░██    ',
      \'       ██░░░░░░██  ',
      \'     ██▓▓████▓▓▓█',
      \'  ██▓▓▓▓▓▓████▓▓█',
      \'██▓▓▓▓▓▓███░░███░',
      \'   ██░░░░░░███████         Vim is my favorite text editor, ',
      \'     ██░░░░███████',
      \'       ██████████ █     I have been using vim for 2 years now  ',
      \'      ██▓▓▓▓▓▓▓▓▓█',
      \'      █████████████  mostly because I cant figure out how to exit',
      \''
      \ ]

" ================ Airline ====================
set laststatus=2
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" ================ NerdTREE  ====================
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"autocmd vimenter * NERDTree "Command to start NerdTREE automatically
autocmd StdinReadPre * let s:std_in=1
"Start NERDTree if vim starts with no arguments
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ================ Syntastic ====================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ================ Easy Align ====================
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ================ Vim-Notes ====================
let g:notes_directories = [
      \ '/home/egarcia87/Dropbox/SPRING2016/notes',
      \]
let g:notes_title_sync = 'change_title'
let g:notes_title_sync = 'rename_file'
let g:notes_smart_quotes = 1
let g:notes_ruler_text = ' ——————————————————————————————————————————————————————— '
