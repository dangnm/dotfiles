" No Vi Compatibility
if &compatible
    set nocompatible
endif

if &shell =~# 'fish$'
    set shell=/bin/bash
endif

" Set augroup
augroup MyAutoCmd
    autocmd!
augroup END

" Disable system plugins
let g:loaded_getscriptPlugin   = 1
let loaded_gzip                = 1
let loaded_logipath            = 1
" let g:loaded_matchparen        = 1
let g:loaded_netrwPlugin       = 1
let loaded_rrhelper            = 1
let loaded_spellfile_plugin    = 1
let g:loaded_tarPlugin         = 1
let g:loaded_2html_plugin      = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_zipPlugin         = 1
let g:omni_sql_no_default_maps = 1
let g:ftplugin_sql_omni_key    = ''

if has('gui_running')
    " Disable menu
    let g:did_install_default_menus = 1
    let g:did_install_syntax_menu   = 1

    if has('gui_macvim')
        set guioptions+=M
    else
        " System menu is not sourced
        set guioptions-=M
    endif
endif

call plug#begin()

" rsi.vim: Readline style insertion
Plug 'tpope/vim-rsi'

" lean & mean status/tabline
Plug 'bling/vim-airline'

" Set vim cursor for iTerm
Plug 'phongnh/vim-iterm-cursor'

" Asynchronous build and test dispatcher
Plug 'tpope/vim-dispatch'

" Interactive command execution
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" CtrlP
if has('python')
    Plug 'FelikZ/ctrlp-py-matcher'
endif
Plug 'ctrlpvim/ctrlp.vim'
Plug 'phongnh/ctrlp-finder'
Plug 'h14i/vim-ctrlp-buftab'
Plug 'DavidEGx/ctrlp-smarttabs'
Plug 'kaneshin/ctrlp-tabbed'
Plug 'fisadev/vim-ctrlp-cmdpalette'
Plug 'ompugao/ctrlp-history'
Plug 'mattn/ctrlp-register'
Plug 'tacahiroy/ctrlp-funky'
Plug 'https://bitbucket.org/slimane/ctrlp-locationlist'

" logging registers and reusing them
Plug 'LeafCage/yankround.vim'

" Maximize current buffer
Plug 'regedarek/ZoomWin'

" Distraction-free writing
Plug 'junegunn/goyo.vim'

" Hyperfocus-writing
Plug 'junegunn/limelight.vim'

" Display the indention levels
Plug 'Yggdroot/indentLine'

" A fancy start screen
Plug 'mhinz/vim-startify'

" Syntax checking hacks for vim
Plug 'scrooloose/syntastic'

if has('python')
    " Visualize your Vim undo tree
    Plug 'sjl/gundo.vim'
else
    " The ultimate undo history visualizer for VIM
    Plug 'mbbill/undotree'
endif

if executable('ctags')
    " A class outline viewer for Vim
    Plug 'majutsushi/tagbar'
endif

" A tree explorer plugin for vim
Plug 'scrooloose/nerdtree'

" BufExplorer Plugin for Vim
Plug 'jlanzarotta/bufexplorer'

" Delete buffers and close files in Vim without closing your windows or messing up your layout
Plug 'moll/vim-bbye'

" Pairs of handy bracket mappings
Plug 'tpope/vim-unimpaired'
" Toggle useful settings
Plug 'phongnh/vim-toggler'

" Simple highlight plugin
Plug 'phongnh/vim-simple-highlight'

" extended % matching for HTML, LaTeX, and many other languages
Plug 'vim-scripts/matchit.zip'

" My vim functions for search and substitue
Plug 'phongnh/vim-search-helpers'

" Extended f, F, t and T key mappings for Vim.
Plug 'rhysd/clever-f.vim'

" Improved incremental searching for Vim
Plug 'haya14busa/incsearch.vim'
" Vim search status
Plug 'osyo-manga/vim-anzu'

" Helps you win at grep.
Plug 'mhinz/vim-grepper'

" Helpers for UNIX
Plug 'tpope/vim-eunuch'
" Phong's vim command helpers
Plug 'phongnh/vim-command-helpers'

" Text Objects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'                  " l
Plug 'kana/vim-textobj-indent'                " i
Plug 'kana/vim-textobj-entire'                " e
Plug 'glts/vim-textobj-comment'               " c
Plug 'mattn/vim-textobj-url'                  " u
Plug 'Julian/vim-textobj-variable-segment'    " v
Plug 'rhysd/vim-textobj-anyblock'             " b
Plug 'thinca/vim-textobj-between'             " f{char}, remapped to n{char}
Plug 'sgur/vim-textobj-parameter'             " ,
Plug 'whatyouhide/vim-textobj-xmlattr'        " x
Plug 'rhysd/vim-textobj-ruby'                 " r: any block | ro: definitions, rl: loop, rc: control, rd: do, rr: any block
Plug 'whatyouhide/vim-textobj-erb'            " E, remapped to y
Plug 'kana/vim-textobj-function'
Plug 'thinca/vim-textobj-function-javascript' " f
Plug 'poetic/vim-textobj-javascript'          " c, remapped to j

" Ecliptic.vim: Amicable Clipboard Integration
Plug 'richsoni/vim-ecliptic'

" Vim plugin to copy current editing file path to clipboard (if support)
Plug 'phongnh/vim-copypath'

" Enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-abolish'

" use CTRL-A/CTRL-X to increment dates, times, and more
Plug 'tpope/vim-speeddating'

" insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Delete unwanted whitespace at the end of lines
Plug 'vim-scripts/DeleteTrailingWhitespace'

" commentary.vim: comment stuff out
Plug 'tpope/vim-commentary'

" A Vim alignment plugin
Plug 'junegunn/vim-easy-align'
" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" Vim plugin that allows you to visually select increasingly larger regions of text using the same key combination.
Plug 'terryma/vim-expand-region'
" True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'

" Code completion and Snippets
if has('lua')
    Plug 'Shougo/neocomplete.vim'
else
    Plug 'Shougo/neocomplcache.vim'
endif
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" SCM
" A awesome Git wrapper so awesome
Plug 'tpope/vim-fugitive'

" A powerful Git log viewer
Plug 'cohama/agit.vim'

" A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.
Plug 'airblade/vim-gitgutter'

" Tmux
if exists("$TMUX")
    Plug 'benmills/vimux'
    Plug 'jebaum/vim-tmuxify'
endif

" Run your tests at the speed of thought
Plug 'janko-m/vim-test'

" A solid language pack for Vim
Plug 'sheerun/vim-polyglot'

" Ruby / Rails
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'

" Web
Plug 'mattn/emmet-vim'
Plug 'gregsexton/MatchTag'

" JavaScript / NodeJS
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'moll/vim-node'

" Go
Plug 'fatih/vim-go'
Plug 'garyburd/go-explorer' " go get github.com/garyburd/go-explorer/src/getool

" Others
Plug 'vim-scripts/fish-syntax'

" Utility
" An implementation of Sublime's PlainTasks plugin for Vim
Plug 'elentok/plaintasks.vim', { 'for': 'plaintasks' }

" Color schemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'

call plug#end()

" Make ESC respond faster
set ttimeout
set ttimeoutlen=50

set visualbell               " Use visual bell instead of beeping

set nomodeline               " Don't parse modelines because of vim modeline vulnerability

set lazyredraw               " Do not redraw while macro executing
set ttyfast

set encoding=utf-8           " Default encoding for saving and reading file
set fileformat=unix          " Default fileformat
set fileformats=unix,dos,mac
set nrformats=hex

" Don't try to highlight lines longer than 1000 characters
set synmaxcol=1000

" Enable virtualedit in visual block mode
set virtualedit=block

set backspace=indent,eol,start  " Enable backspace delete indent and newline

set hidden      " Allow buffer switching without saving
set autoread    " Auto-reload if file is saved externally

set showmatch       " Automatically highlight matching braces/brackets/etc
set cpoptions-=m    " Highlight when CursorMoved
set matchpairs+=<:> " Highlight <>
set matchtime=1

set infercase   " Ignore case on insert completion
set ignorecase  " Ignore case search for normal letters
set smartcase   " Do case-sensitive search if pattern contains upper case letters
set incsearch   " Enable incremental search
set hlsearch    " Highlight searche result

" Default indent settings
set tabstop=4 shiftwidth=4

set autoindent
set smartindent
set shiftround  " Round indent by shiftwidth
set smarttab    " Smart insert / delete tab
set expandtab   " Expand tab to space

set foldmethod=indent   " Fold by indent
set foldlevel=1         " Starting fold level
set foldnestmax=20      " Deepest fold is 20 levels
set foldlevelstart=99   " Open all folds by default
set nofoldenable        " Disable fold by default

set fillchars=diff:⣿,vert:│

set grepformat=%f:%l:%c:%m,%f:%l:%m

" Turn off swapfile and backup
set noswapfile
set nobackup
set nowritebackup
set directory=~/.cache/swap
set backupdir=~/.cache/backup

if has('persistent_undo')
    set undofile
    set undodir=~/.cache/undo
endif

set scrolloff=10                " Minimal number of screen lines to keep above and below the cursor
set sidescroll=1                " The minimal number of columns to scroll horizontally
set sidescrolloff=15            " The minimal number of screen columns to keep to the left and to the right of the cursor

" Display tabs and trailing spaces
set listchars=tab:>\ ,trail:-,nbsp:+,extends:>,precedes:<

if has('conceal')
    set listchars+=conceal:^
    set conceallevel=2 concealcursor=i
endif

set display+=lastline           " When a line is long, do not omit it in @

" Wrap conditions
set whichwrap+=h,l,<,>,[,],b,s,~

if has('linebreak')
    set linebreak                   " Wrap lines at convenient point
    let &showbreak='↪ '
    set breakat=\ \	;:,!?
    if exists('+breakindent')
        set breakindent
    endif
endif

set formatoptions+=1            " Don't break a line after a one-letter word
if v:version > 703 || v:version == 703 && has('patch541')
    set formatoptions+=j        " Delete comment character when joining commented lines
endif

set laststatus=2                " Always display statusline

" set showcmd                     " Show (partial) command in the last line of the screen
set cmdheight=2                 " Height of command-line (easy-readable)

set undolevels=1000             " Maximum number of changes that can be undone
set history=1000                " Store lots of command lines in history

" Completion settings
set completeopt=menuone
set complete=.,w,b,u,t
set pumheight=20                " Set popup menu max height

set wildmenu
set wildmode=list:longest,full
" Ingore the following stuff when tab completing
set wildignore+=.hg,.git,.svn,*.o,*.obj,*.pyc,*.luac,*.jpg,*.jpeg,*.png,*.gif,*.bmp,*.pdf,*.class,*.dmg,*.DS_Store,*.lnk,*.ini,*.dat

" Adjust window size of preview and help
set previewheight=8
set helpheight=12

set nostartofline               " The cursor is kept in the same column (if possible)

set splitbelow                  " Splitting a window will put the new window below the current one
set splitright                  " Splitting a window will put the new window right the current one

set t_Co=256                    " Enable 256 colors

" Remember where we are, support yankring
set viminfo^=!

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
    runtime! macros/matchit.vim
endif

" Map leader
let g:mapleader = ','

" Release keymappings for plug-in
nnoremap , <Nop>
xnoremap , <Nop>

nnoremap m <Nop>
xnoremap m <Nop>

" m: App key
nnoremap [App] <Nop>
xnoremap [App] <Nop>
nmap     m     [App]
xmap     m     [App]

" Retain orignal behaviors
nnoremap [App], ,
nnoremap [App]; ;
nnoremap [App]m m
nnoremap [App]H H
nnoremap [App]M M
nnoremap [App]L L

" <Space>: Other useful commands
nnoremap [Space] <Nop>
xnoremap [Space] <Nop>
nmap     <Space> [Space]
xmap     <Space> [Space]

" F1: Help
nnoremap <F1> :help<Space>
inoremap <F1> <Esc>:help<Space>

" Command-line Mode Mappings
" CTRL-Space: Show history
cnoremap <C-@> <C-F>

" CTRL-V: Paste from clipboard
cnoremap <C-V> <C-R>+

" Insert Mode Mappings
" Enable undo CTRL-W (Delete word) and CTRL-U (Delete line)
inoremap <C-W> <C-G>u<C-W>
inoremap <C-U> <C-G>u<C-U>

" CTRL-T: Insert tab
inoremap <silent> <C-T> <C-V><Tab>

" Jump to last active buffer
inoremap <C-^> <C-C><C-^>
" inoremap <C-^> <C-C>:update<CR><C-^>

" Normal Mode Mappings
" Useless command
nnoremap M m

" Q: qq to record, Q to replay and Disable Ex-mode
nmap     Q  @q
nnoremap gQ gq

" .: repeats the last command on every line
xnoremap . :normal .<CR>

" @: repeats macro on every line
xnoremap @ :normal @

" Disable ZZ, ZQ, CTRL-Z
nnoremap ZZ    <Nop>
nnoremap ZQ    <Nop>
nnoremap <C-Z> <Nop>

" Disable arrows
nnoremap <Left>  <Nop>
nnoremap <Down>  <Nop>
nnoremap <Up>    <Nop>
nnoremap <Right> <Nop>

" H: Move to Home
noremap  H ^
" L: Move to End
noremap  L $
xnoremap L g_

" Select until end of current line in visual mode
" xnoremap v $h
" Select rectangle - Visual Block
xnoremap r <C-V>

" Indent
nnoremap >       >>
nnoremap <       <<
xnoremap >       >gv
xnoremap <       <gv
xnoremap <Tab>   >gv
xnoremap <S-Tab> <gv

" Indent whole file
nnoremap g= gg=G``

" gi already moves to "last place you exited insert mode"
" gI: Move to last change
nnoremap gI `.`

" gV: Select the text that was last edited/pasted
" http://vimcasts.org/episodes/bubbling-text/
nmap gV `[v`]

" D: Delete to end line
nnoremap D  d$

" U: Redo
nnoremap U :redo<CR>

" Yank to end line
nnoremap Y y$

" Folding
" If press h on head, fold close
"nnoremap <expr> h col('.') == 1 && foldlevel(line('.')) > 0 ? 'zc' : 'h'
" If press l on fold, fold open
nnoremap <expr> l foldclosed(line('.')) != -1 ? 'zo0' : 'l'

" If press h on head, range fold close
"xnoremap <expr> h col('.') == 1 && foldlevel(line('.')) > 0 ? 'zcgv' : 'h'
" If press l on fold, range fold open
xnoremap <expr> l foldclosed(line('.')) != -1 ? 'zogv0' : 'l'

" Toggle Fold
noremap za zazz

" Next / previous fold
noremap zj zjzz
noremap zk zkzz

" Invert 'foldenable'
nnoremap <silent> zi zizz

nnoremap <silent> zr zr:echo 'foldlevel = ' . &foldlevel<CR>
nnoremap <silent> zm zm:echo 'foldlevel = ' . &foldlevel<CR>
nnoremap <silent> zR zR:echo 'foldlevel = ' . &foldlevel<CR>
nnoremap <silent> zM zM:echo 'foldlevel = ' . &foldlevel<CR>

nnoremap <silent> z] :let &foldcolumn = &foldcolumn + 1<CR>:echo 'foldcolumn = ' . &foldcolumn<CR>
nnoremap <silent> z[ :let &foldcolumn = &foldcolumn - 1<CR>:echo 'foldcolumn = ' . &foldcolumn<CR>

" Auto center
nnoremap <silent> g;    g;zz
nnoremap <silent> g,    g,zz
nnoremap <silent> <C-O> <C-O>zz
nnoremap <silent> <C-I> <C-I>zz

" Next/previous window
nnoremap <silent> ]w :wincmd w<CR>
nnoremap <silent> [w :wincmd W<CR>

" Reload buffer
nnoremap <silent> <C-W>e     :edit<CR>
nnoremap <silent> <C-W><C-E> :edit<CR>
nnoremap <silent> <C-W>E     :edit!<CR>

" Unload buffer
nnoremap <silent> <C-W><BS> :bdelete<CR>

" gb: Last buffer
nnoremap <silent> gb :buffer#<CR>

" Save buffer
nnoremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

" Quit Vim
nnoremap <silent> <Leader>Q :confirm qall<CR>

" Use <C-\> to do <C-]> but open it in a new split
nnoremap <C-\> <C-W>v<C-]>zvzz

" Search and Replace
nnoremap <Leader>r :%s/<C-R>=GetWordForSubstitute()<CR>/gc<Left><Left><Left>
nnoremap <Leader>R :%s//gc<Left><Left><Left>

xnoremap <Leader>r <Esc>:%s/<C-R>=GetSelectedTextForSubstitute()<CR>//gc<Left><Left><Left>
xnoremap <Leader>R :s/\%V/gc<Left><Left><Left>

" Paste from clipboard
inoremap <silent> <C-V>     <C-G>u<C-O>"+gP
nnoremap <silent> <Leader>v :set paste<CR>"+gp:set nopaste<CR>
nnoremap <silent> <Leader>V :set paste<CR>"+gP:set nopaste<CR>

" Paste from clipboard with indent
nnoremap <silent> ]v o<Esc>"+pm``[=`]``^
nnoremap <silent> [v O<Esc>"+Pm``[=`]``^
nnoremap <silent> ]V o<Esc>"+Pm``[=`]``^
nnoremap <silent> [V O<Esc>"+pm``[=`]``^

" Redraw
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" bling/vim-airline
let g:airline#extensions#hunks#enabled      = 0
let g:airline#extensions#tagbar#enabled     = 0
let g:airline#extensions#csv#enabled        = 0
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#syntastic#enabled  = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tmuxline#enabled   = 0
let g:airline#extensions#promptline#enabled = 0
let g:airline#extensions#capslock#enabled   = 0
let g:airline#extensions#windowswap#enabled = 0
let g:airline#extensions#anzu#enabled       = 0

let g:airline#extensions#tabline#enabled        = 1
let g:airline#extensions#tabline#tab_nr_type    = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod       = ':t'

let g:airline_powerline_fonts = 0

let g:airline_left_sep                        = ''
let g:airline_left_alt_sep                    = '|'
let g:airline_right_sep                       = ''
let g:airline_right_alt_sep                   = '|'
let g:airline#extensions#tabline#left_sep     = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.readonly   = 'RO'
let g:airline_symbols.paste      = 'PASTE'
let g:airline_symbols.whitespace = '*'

call airline#parts#define('mode', {
            \ 'function': 'AirlineModeAndClipboard',
            \ 'accent':   'bold'
            \ })

function! AirlineModeAndClipboard()
    return airline#parts#mode() . (match(&clipboard, 'unnamed') > -1 ? ' @' : '')
endfunction

autocmd MyAutoCmd VimEnter * set showtabline=1 noshowmode

if has_key(g:plugs, 'ctrlp-py-matcher')
    " FelikZ/ctrlp-py-matcher
    let g:ctrlp_clear_cache_on_exit = 0
    let g:ctrlp_max_files           = 0
    let g:ctrlp_match_func          = { 'match': 'pymatcher#PyMatch' }
endif

" ctrlpvim/ctrlp.vim
let g:ctrlp_match_window      = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_map               = ''
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_reuse_window      = 'startify'
let g:ctrlp_prompt_mappings   = { 'MarkToOpen()': ['<C-Z>', '<C-@>'], }
let g:ctrlp_custom_ignore     = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc'
            \ }

if executable('ag')
    let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
elseif has('win32') || has('win64')
    let s:ctrlp_fallback = 'dir %s /-n /b /s /a-d'
else
    let s:ctrlp_fallback = 'find %s -type f'
endif

let g:ctrlp_use_caching  = 0
let g:ctrlp_user_command = {
            \ 'types': {
            \   1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
            \   2: ['.hg',  'hg --cwd %s locate -I .'],
            \ },
            \ 'fallback': s:ctrlp_fallback
            \ }

nnoremap <silent> [Space]R :CtrlPLastMode --dir<CR>

nnoremap <silent> [Space]- :CtrlPClearAllCaches<CR>

nnoremap <silent> [Space]<Space> :CtrlPMixed<CR>

nnoremap <silent> [Space]d :CtrlPDir<CR>
nnoremap          [Space]D :CtrlPDir<Space>

nnoremap <silent> [Space]f :CtrlP<CR>
nnoremap          [Space]F :CtrlP<Space>

nnoremap <silent> [Space]c :CtrlPCurFile<CR>
nnoremap <silent> [Space]C :CtrlP <C-R>=expand("%:h:h")<CR><CR>

nnoremap <silent> [Space]b :CtrlPBuffer<CR>

nnoremap <silent> [Space]l :CtrlPLine %<CR>
nnoremap <silent> [Space]L :CtrlPLine<CR>

nnoremap <silent> [Space]k :CtrlPBookmarkDir<CR>
nnoremap          [Space]K :CtrlPBookmarkDirAdd!<Space>

nnoremap <silent> [Space]r :CtrlPMRUFiles<CR>

nnoremap <silent> [Space]a :CtrlPBufTag<CR>
nnoremap <silent> [Space]A :CtrlPBufTagAll<CR>

nnoremap <silent> [Space]q :CtrlPQuickfix<CR>

" phongnh/ctrlp-finder
nnoremap <silent> [Space]e :CtrlPFinder<CR>
nnoremap          [Space]E :CtrlPFinder<Space>

" h14i/vim-ctrlp-buftab
nnoremap <silent> [Space]B :CtrlPBufTab<CR>

" DavidEGx/ctrlp-smarttabs
nnoremap <silent> [Space]t :CtrlPSmartTabs<CR>

" kaneshin/ctrlp-tabbed
nnoremap <silent> [Space]T :CtrlPTabbed<CR>

" fisadev/vim-ctrlp-cmdpalette
nnoremap <silent> [Space]M :CtrlPCmdPalette<CR>

" ompugao/ctrlp-history
nnoremap <silent> [Space]: :CtrlPCmdHistory<CR>
nnoremap <silent> [Space]/ :CtrlPSearchHistory<CR>

" mattn/ctrlp-register
nnoremap <silent> [Space]i :CtrlPRegister<CR>

" tacahiroy/ctrlp-funky
nnoremap <silent> [Space]o :CtrlPFunky<CR>
nnoremap <silent> [Space]O :CtrlPFunkyMulti<CR>

" slimane/ctrlp-locationlist
nnoremap <silent> [Space]Q :CtrlPLocationlist<CR>

" LeafCage/yankround.vim
let g:yankround_max_history = 100

nnoremap <silent> [Space]y :CtrlPYankRound<CR>

" regedarek/ZoomWin
nnoremap <silent> <F2> :ZoomWin<CR>
inoremap <silent> <F2> <Esc>:ZoomWin<CR>

nnoremap <silent> [Space]<Enter> :ZoomWin<CR>

" junegunn/goyo.vim
let g:goyo_width  = '80%'
let g:goyo_height = '96%'
let g:goyo_linenr = 0

nnoremap <silent> <F3> :Goyo<CR>
inoremap <silent> <F3> <Esc>:Goyo<CR>

autocmd! User GoyoEnter nested call <SID>custom_goyo_enter()
autocmd! User GoyoLeave nested call <SID>custom_goyo_leave()

function! s:custom_goyo_enter()
    let s:goyo_settings = {
                \ 'showmode':    &showmode,
                \ 'linespace':   &linespace,
                \ 'scrolloff':   &scrolloff,
                \ }

    if has('fullscreen')
        set fullscreen
    endif

    if &linespace == 0
        set linespace=5
    endif
    set scrolloff=999
    set showmode

    if exists(':Limelight') == 2
        execute 'Limelight'
    endif

    if exists(':NeoCompleteLock') == 2
        execute 'NeoCompleteLock'
    elseif exists(':NeoComplCacheLock') == 2
        execute 'NeoComplCacheLock'
    endif
endfunction

function! s:custom_goyo_leave()
    if has('fullscreen')
        set nofullscreen
    endif

    for [k, v] in items(s:goyo_settings)
        execute printf('let &%s = %s', k, string(v))
    endfor

    if exists(':Limelight') == 2 || exists(':Limelight!')
        execute 'Limelight!'
    endif

    if exists(':NeoCompleteUnlock') == 2
        execute 'NeoCompleteUnlock'
    elseif exists(':NeoComplCacheUnlock') == 2
        execute 'NeoComplCacheUnlock'
    endif
endfunction

" junegunn/limelight.vim
let g:limelight_conceal_ctermfg     = 'gray'
let g:limelight_conceal_ctermfg     = 240
let g:limelight_conceal_guifg       = 'DarkGray'
let g:limelight_conceal_guifg       = '#777777'
let g:limelight_default_coefficient = 0.5
let g:limelight_paragraph_span      = 1
let g:limelight_priority            = -1

" Yggdroot/indentLine
let g:indentLine_enabled              = 0
let g:indentLine_char                 = '│'
let g:indentLine_first_char           = g:indentLine_char
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_noConcealCursor      = 1
let g:indentLine_color_term           = 239
" let g:indentLine_color_gui            = '#A4E57E'

nnoremap <silent> <F4> :IndentLinesToggle<CR>
inoremap <silent> <F4> <Esc>:IndentLinesToggle<CR>

" mhinz/vim-startify
let g:startify_skiplist = [
            \ '.git/index',
            \ '.git/config',
            \ 'COMMIT_EDITMSG',
            \ 'git-rebase-todo',
            \ escape(fnamemodify($VIMRUNTIME, ':p'), '\') . 'doc',
            \ ]

let g:startify_enable_special     = 0
let g:startify_change_to_dir      = 0
let g:startify_change_to_vcs_root = 1
let g:startify_show_sessions      = 1

nnoremap <silent> <F5> :Startify<CR>
inoremap <silent> <F5> <Esc>:Startify<CR>

augroup MyAutoCmd
    autocmd FileType startify setlocal nofoldenable foldcolumn=0
    autocmd User Startified setlocal buftype=
augroup END

" scrooloose/syntastic
let g:syntastic_mode_map                 = { 'mode': 'passive', 'active_filetypes': [], }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height          = 5
let g:syntastic_check_on_open            = 0
let g:syntastic_check_on_wq              = 0
let g:syntastic_aggregate_errors         = 1
let g:syntastic_error_symbol             = '>>'
let g:syntastic_style_error_symbol       = 'S>'
let g:syntastic_warning_symbol           = '!!'
let g:syntastic_style_warning_symbol     = 'S!'

nnoremap <silent> <F6> :SyntasticCheck<CR>:echo SyntasticStatuslineFlag()<CR>
inoremap <silent> <F6> <Esc>:SyntasticCheck<CR>:echo SyntasticStatuslineFlag()<CR>

if has('python')
    " sjl/gundo.vim
    let g:gundo_right          = 1
    let g:gundo_width          = 30
    let g:gundo_preview_bottom = 1
    let g:gundo_preview_height = 18
    let g:gundo_auto_preview   = 0

    nnoremap <silent> <F7> :GundoToggle<CR>
    inoremap <silent> <F7> <Esc>:GundoToggle<CR>
else
    " mbbill/undotree
    let g:undotree_WindowLayout       = 'botright'
    let g:undotree_SetFocusWhenToggle = 1

    nnoremap <silent> <F7> :UndotreeToggle<CR>
    inoremap <silent> <F7> <Esc>:UndotreeToggle<CR>
endif

if has_key(g:plugs, 'tagbar')
    " majutsushi/tagbar
    let g:tagbar_sort      = 0
    let g:tagbar_autofocus = 1
    let g:tagbar_autoclose = 0
    let g:tagbar_iconchars = ['▸', '▾']

    let g:tagbar_type_css = {
                \ 'ctagstype' : 'Css',
                \ 'kinds'     : [
                \ 'c:classes',
                \ 's:selectors',
                \ 'i:identities'
                \ ]
                \ }

    let g:tagbar_type_ruby = {
                \ 'kinds' : [
                \ 'm:modules',
                \ 'c:classes',
                \ 'd:describes',
                \ 'C:contexts',
                \ 'f:methods',
                \ 'F:singleton methods'
                \ ]
                \ }

    let g:tagbar_type_coffee = {
                \ 'ctagstype' : 'coffee',
                \ 'kinds'     : [
                \ 'c:classes',
                \ 'm:methods',
                \ 'f:functions',
                \ 'v:variables',
                \ 'f:fields',
                \ ]
                \ }

    nnoremap <silent> <F8> :TagbarToggle<CR>
    inoremap <silent> <F8> <Esc>:TagbarToggle<CR>
endif

" scrooloose/nerdtree
let g:NERDTreeWinSize       = 35
let g:NERDTreeMouseMode     = 2
let g:NERDTreeMapChangeRoot = '.' " Map . for changing root in NERDTree
let g:NERDTreeQuitOnOpen    = 0
let g:NERDTreeChDirMode     = 0
let g:NERDTreeShowBookmarks = 1

nnoremap <silent> <F9>  :NERDTreeToggle<CR>
inoremap <silent> <F9>  <Esc>:NERDTreeToggle<CR>
nnoremap <silent> <F10> :NERDTreeFind<CR>
inoremap <silent> <F10> <Esc>:NERDTreeFind<CR>

" jlanzarotta/bufexplorer
let g:bufExplorerDisableDefaultKeyMapping = 1
let g:bufExplorerShowDirectories          = 0
let g:bufExplorerShowRelativePath         = 1
nnoremap <silent> gl :ToggleBufExplorer<CR>

" moll/vim-bbye
command! -bang -complete=buffer -nargs=? BD Bdelete<bang> <args>

" tpope/vim-unimpaired
augroup MyAutoCmd
    " Unmap unused mappings
    autocmd VimEnter * silent! nunmap >P
    autocmd VimEnter * silent! nunmap >p
    autocmd VimEnter * silent! nunmap <P
    autocmd VimEnter * silent! nunmap <p
augroup END

" haya14busa/incsearch.vim
" let g:incsearch#magic                             = '\v'
let g:incsearch#auto_nohlsearch                   = 1
let g:incsearch#do_not_save_error_message_history = 1

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" osyo-manga/vim-anzu
let g:anzu_status_format = "%p(%i/%l) %w"

map n  <Plug>(incsearch-nohl)<Plug>(anzu-n-with-echo)zzzv
map N  <Plug>(incsearch-nohl)<Plug>(anzu-N-with-echo)zzzv
map *  <Plug>(incsearch-nohl)<Plug>(anzu-star-with-echo)zzzv
map #  <Plug>(incsearch-nohl)<Plug>(anzu-sharp-with-echo)zzzv

" mhinz/vim-grepper
let g:grepper = {
            \ 'dispatch': !has('nvim') && exists(':Dispatch') && exists("$TMUX"),
            \ 'open': 1,
            \ 'switch': 0,
            \ 'jump': 0,
            \ 'next_tool': '<C-J>',
            \ 'tools': ['ag', 'pt', 'sift', 'git', 'grep', 'findstr'],
            \ 'sift': {
            \   'grepprg': 'sift --binary-skip --git --err-skip-line-length -n -i $*'
            \ },
            \ }

nmap <silent> gs <Plug>(GrepperOperator)
xmap <silent> gs <Plug>(GrepperOperator)

nnoremap <silent> [App]S :Grepper<CR>

nnoremap <silent> [App]s :echo 'Searching...'<CR>:Grepper -cword!<CR>
xmap     <silent> [App]s <Plug>(GrepperOperator)

" thinca/vim-textobj-between
let g:textobj_between_no_default_key_mappings = 1

omap an <Plug>(textobj-between-a)
omap in <Plug>(textobj-between-i)
xmap an <Plug>(textobj-between-a)
xmap in <Plug>(textobj-between-i)

" Replace 'lucapette/vim-textobj-underscore'
omap a_ <Plug>(textobj-between-a)_
omap i_ <Plug>(textobj-between-i)_
xmap a_ <Plug>(textobj-between-a)_
xmap i_ <Plug>(textobj-between-i)_

" rhysd/vim-textobj-ruby
let g:textobj_ruby_more_mappings = 0

" whatyouhide/vim-textobj-erb
let g:textobj_erb_no_default_key_mappings = 1

" Remap from 'E' to 'y'
omap ay <Plug>(textobj-erb-a)
omap iy <Plug>(textobj-erb-i)
xmap ay <Plug>(textobj-erb-a)
xmap iy <Plug>(textobj-erb-i)

" poetic/vim-textobj-javascript
let g:textobj_chunkblock_no_default_key_mappings = 1

" Remap from 'c' to 'j'
omap aj <Plug>(textobj-chunkblock-a)
omap ij <Plug>(textobj-chunkblock-i)
xmap aj <Plug>(textobj-chunkblock-a)
xmap ij <Plug>(textobj-chunkblock-i)

" tpope/vim-surround
let g:surround_indent             = 1
let g:surround_no_insert_mappings = 1

" nmap <C-Y><C-W> ysiw

augroup MyAutoCmd
    autocmd VimEnter * silent! iunmap <C-G>s
    autocmd VimEnter * silent! iunmap <C-G>S
    autocmd BufEnter * silent! iunmap <buffer> <C-G>g
augroup END

" jiangmiao/auto-pairs
if !has('gui_running') && !has('nvim')
    execute "set <M-t>=\<Esc>t"
    execute "set <M-j>=\<Esc>j"
    execute "set <M-w>=\<Esc>w"
    execute "set <M-i>=\<Esc>i"
endif
let g:AutoPairsMapBS              = 0
let g:AutoPairsFlyMode            = 0
let g:AutoPairsShortcutToggle     = '<M-t>'
let g:AutoPairsShortcutJump       = '<M-j>'
let g:AutoPairsShortcutFastWrap   = '<M-w>'
let g:AutoPairsShortcutBackInsert = '<M-i>'

autocmd MyAutoCmd BufEnter * execute 'inoremap <buffer> <silent> <BS> <C-R>=AutoPairsDelete()<CR>'

" vim-scripts/DeleteTrailingWhitespace
nnoremap <silent> <Leader>W :update<CR>:DeleteTrailingWhitespace<CR>

" tpope/vim-commentary
let g:commentary_map_backslash = 0

" junegunn/vim-easy-align
xnoremap <silent> <Enter> :EasyAlign<Enter>

" godlygeek/tabular
nnoremap [App]<Enter> :Tabularize /
xnoremap [App]<Enter> :Tabularize /

autocmd MyAutoCmd FileType cucumber inoremap <silent> <buffer> <Bar> <Bar><Esc>:call <SID>BarAlign()<CR>a

function! s:BarAlign()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction

" terryma/vim-expand-region
" Default settings
let g:expand_region_text_objects = {
            \ 'iw'  :0,
            \ 'iW'  :0,
            \ 'i"'  :0,
            \ 'i''' :0,
            \ 'i]'  :1,
            \ 'ib'  :1,
            \ 'iB'  :1,
            \ 'il'  :0,
            \ 'ip'  :0,
            \ 'ie'  :0,
            \ }

" Extend the global dictionary
call expand_region#custom_text_objects({
            \ "\/\\n\\n\<CR>": 1,
            \ 'a]'  :1,
            \ 'ab'  :1,
            \ 'aB'  :1,
            \ 'ii'  :0,
            \ 'ai'  :0,
            \ })

" Customize it further for ruby
call expand_region#custom_text_objects('ruby', {
            \ 'im' :0,
            \ 'am' :0,
            \ })

" Customize it further for ruby
call expand_region#custom_text_objects('go', {
            \ 'if' :0,
            \ 'af' :0,
            \ })

" Customize it further for html
call expand_region#custom_text_objects('html', {
            \ 'it' :1,
            \ })

map - <Plug>(expand_region_shrink)
map + <Plug>(expand_region_expand)

" terryma/vim-multiple-cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key            = '<C-N>'
let g:multi_cursor_prev_key            = '<C-P>'
let g:multi_cursor_skip_key            = '<C-X>'
let g:multi_cursor_quit_key            = '<Esc>'

xnoremap <F6> :MultipleCursorsFind<Space>

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
    if exists(':NeoCompleteDisable') == 2
        execute 'NeoCompleteDisable'
    elseif exists(':NeoComplCacheDisable') == 2
        execute 'NeoComplCacheDisable'
    endif
endfunction

" Called once only when the multiple selection is cancelled (default <Esc>)
function! Multiple_cursors_after()
    if exists(':NeoCompleteEnable') == 2
        execute 'NeoCompleteEnable'
    elseif exists(':NeoComplCacheEnable') == 2
        execute 'NeoComplCacheEnable'
    endif
endfunction

if has_key(g:plugs, 'neocomplete.vim')
    " Shougo/neocomplete.vim
    let g:neocomplete#enable_at_startup                 = 1 " Use neocomplete
    let g:neocomplete#enable_smart_case                 = 1 " Use smartcase
    let g:neocomplete#min_keyword_length                = 3 " Set minimum keyword length
    let g:neocomplete#sources#syntax#min_keyword_length = 3 " Set minimum syntax keyword length
    let g:neocomplete#ignore_source_files               = []

    call neocomplete#custom#source('look', 'min_pattern_length', 4)
    call neocomplete#custom#source('_', 'converters',
                \ [ 'converter_add_paren', 'converter_remove_overlap', 'converter_delimiter', 'converter_abbr' ])

    if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = {}
    endif

    if !exists('g:neocomplete#sources#omni#functions')
        let g:neocomplete#sources#omni#functions = {}
    endif

    if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
    endif

    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif

    " let g:neocomplete#force_omni_input_patterns.ruby     = '[^. *\t]\.\w*\|\h\w*::\w*'
    " let g:neocomplete#sources#omni#input_patterns.ruby   = '[^. *\t]\.\w*\|\h\w*::\w*'
    let g:neocomplete#sources#omni#input_patterns.python = '[^. *\t]\.\w*\|\h\w*'
    let g:neocomplete#sources#omni#functions.go          = 'go#complete#Complete'
    let g:neocomplete#keyword_patterns._                 = '\h\k*(\?'

    let g:neocomplete#sources#vim#complete_functions = {
                \ 'Unite' : 'unite#complete_source',
                \ }

    " CTRL-H, <BS>: close popup and delete backword char
    inoremap <expr> <C-H> neocomplete#smart_close_popup()."\<C-H>"
    inoremap <expr> <BS>  neocomplete#smart_close_popup()."\<C-H>"

    inoremap <silent> <expr> <C-X><C-F> neocomplete#start_manual_complete('file')

    inoremap <expr> <C-G> neocomplete#undo_completion()
    inoremap <expr> <C-L> neocomplete#complete_common_string()

    " <CR>: close popup
    inoremap <silent> <CR> <C-R>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
        return neocomplete#close_popup() . "\<CR>"
    endfunction

    " <Tab>: completion
    inoremap <silent> <expr> <Tab>
                \ pumvisible() ? "\<C-N>" :
                \ <SID>check_back_space() ? "\<Tab>" :
                \ neocomplete#start_manual_complete()
    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~ '\s'
    endfunction

    " <S-Tab>: completion back
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"

    let g:neocomplete#fallback_mappings = ["\<C-X>\<C-O>", "\<C-X>\<C-N>"]
else
    " Shougo/neocomplcache.vim
    let g:neocomplcache_enable_at_startup  = 1 " Use neocomplcache
    let g:neocomplcache_enable_smart_case  = 1 " Use smartcase
    let g:neocomplcache_min_keyword_length = 3 " Set minimum keyword length
    let g:neocomplcache_min_syntax_length  = 3 " Set minimum syntax keyword length

    call neocomplcache#custom_source('look', 'min_pattern_length', 4)

    if !exists('g:neocomplcache_omni_patterns')
        let g:neocomplcache_omni_patterns = {}
    endif

    if !exists('g:neocomplcache_omni_functions')
        let g:neocomplcache_omni_functions = {}
    endif

    if !exists('g:neocomplcache_force_omni_patterns')
        let g:neocomplcache_force_omni_patterns = {}
    endif

    if !exists('g:neocomplcache_keyword_patterns')
        let g:neocomplcache_keyword_patterns = {}
    endif

    let g:neocomplcache_force_overwrite_completefunc = 1

    let g:neocomplcache_force_omni_patterns.c        = '[^.[:digit:] *\t]\%(\.\|->\)'
    let g:neocomplcache_force_omni_patterns.cpp      = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
    let g:neocomplcache_force_omni_patterns.go       = '\h\w*\.\?'
    " let g:neocomplcache_force_omni_patterns.ruby     = '[^. *\t]\.\w*\|\h\w*::'
    let g:neocomplcache_omni_patterns.ruby           = '[^. *\t]\.\w*\|\h\w*::'
    let g:neocomplcache_omni_functions.go            = 'go#complete#Complete'
    let g:neocomplcache_keyword_patterns['default'] = '[0-9a-zA-Z:#_]\+'

    let g:neocomplcache_vim_completefuncs = {
                \ 'Unite' : 'unite#complete_source',
                \ }

    " CTRL-H, <BS>: close popup and delete backword char
    inoremap <expr> <C-H> neocomplcache#smart_close_popup()."\<C-H>"
    inoremap <expr> <BS>  neocomplcache#smart_close_popup()."\<C-H>"

    inoremap <silent> <expr> <C-X><C-F> neocomplcache#start_manual_complete('file')

    inoremap <expr> <C-G> neocomplcache#undo_completion()
    inoremap <expr> <C-L> neocomplcache#complete_common_string()

    " <CR>: close popup
    inoremap <silent> <CR> <C-R>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
        return neocomplcache#close_popup() . "\<CR>"
    endfunction

    " <Tab>: completion
    inoremap <silent> <expr> <Tab>
                \ pumvisible() ? "\<C-N>" :
                \ <SID>check_back_space() ? "\<Tab>" :
                \ neocomplcache#start_manual_complete()
    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~ '\s'
    endfunction

    " <S-Tab>: completion back
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"

    let g:neocomplcache#fallback_mappings = ["\<C-X>\<C-O>", "\<C-X>\<C-N>"]
endif

" Shougo/neosnippet.vim
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#enable_complete_done          = 1
let g:neosnippet#expand_word_boundary          = 1

smap <C-K> <Plug>(neosnippet_jump_or_expand)
xmap <C-K> <Plug>(neosnippet_expand_target)
imap <C-K> <Plug>(neosnippet_expand_or_jump)

imap <expr> <Tab> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-N>" : "\<Tab>"
smap <expr> <Tab> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<Tab>"

imap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"
smap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"

if has_key(g:plugs, 'unite.vim')
    nnoremap <silent> [Space]I :Unite -buffer-name=snippets neosnippet<CR>
endif

" tpope/vim-fugitive
augroup MyAutoCmd
    autocmd FileType gitcommit nmap <silent> <buffer> U :Git checkout -- <C-R><C-G><CR>
    autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END

nnoremap          <Leader>G  :Git!<Space>
nnoremap          <Leader>gi :Git<Space>
nnoremap          <Leader>gu :Git commit -m ""<Left>
nnoremap          <Leader>ga :Git add -p %<CR><CR>
nnoremap          <Leader>gA :Git add -p<CR><CR>
nnoremap          <Leader>ge :Gedit<Space>
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap          <Leader>gm :Gmerge<Space>
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gB :echo fugitive#head()<CR>
nnoremap <silent> <Leader>gw :Gwrite<CR>
nnoremap <silent> <Leader>gr :Gread<CR>
nnoremap <silent> <Leader>gR :Gremove<CR>
nnoremap          <Leader>gM :Gmove<Space>
nnoremap <silent> <Leader>gc :Gcommit<CR>
nnoremap          <Leader>gC :Gcommit<Space>
nnoremap <silent> <Leader>gf :Gfetch<CR>
nnoremap <silent> <Leader>gF :Gfetch -p<CR>
nnoremap <silent> <Leader>gp :Gpush<CR>
nnoremap <silent> <Leader>gP :Gpull<CR>
nnoremap          <Leader>g/ :Ggrep!<Space>
nnoremap          <Leader>gg :Ggrep! <C-R>=GetWordForSearch()<CR><Space>
xnoremap          <Leader>gg <Esc>:Ggrep! <C-R>=GetSelectedTextForSearch()<CR><Space>
nnoremap          <Leader>gl :Glog!<Space>
nnoremap          <Leader>gL :Gllog!<Space>

" cohama/agit.vim
nnoremap <silent> <Leader>gk :AgitFile<CR>
nnoremap <silent> <Leader>gK :Agit<CR>

" airblade/vim-gitgutter
let g:gitgutter_map_keys  = 0
let g:gitgutter_realtime  = 0
let g:gitgutter_eager     = 0
let g:gitgutter_max_signs = 500

nmap ]h <Plug>GitGutterNextHunk zz
nmap [h <Plug>GitGutterPrevHunk zz

nnoremap <silent> cog :GitGutterToggle<CR>

if exists("$TMUX")
    " common tmux functions
    function! TmuxFormatCommand(text)
        let cmd = substitute(a:text, '^\s*', '', '')
        let cmd = substitute(cmd, '\s*$', '', '')
        let cmd = substitute(cmd, '^\n*', '', '')
        let cmd = substitute(cmd, '\n*$', '', '')
        let cmd = substitute(cmd, '\n\+', '\n', '')
        return cmd
    endfunction

    function! TmuxFormatKeys(text)
        let keys = substitute(a:text, '\n+', ' ', '')
        let keys = substitute(keys, '^\s*', '', '')
        let keys = substitute(keys, '\s*$', '', '')
        let keys = substitute(keys, '\s\+', ' ', '')
        return keys
    endfunction

    " benmills/vimux
    let g:VimuxUseNearest = 1
    let g:VimuxHeight     = 25

    xnoremap <silent> [App]vs "my:call VimuxSlime(@m)<CR>
    nmap     <silent> [App]vs vip[App]vs
    nnoremap <silent> [App]vr :VimuxPromptCommand<CR>
    nnoremap <silent> [App]vR :VimuxRunLastCommand<CR>
    nnoremap <silent> [App]vq :call VimuxSendManyKeys('q C-u')<CR>
    nnoremap <silent> [App]vm :call VimuxSendManyKeys('Enter')<CR>
    nnoremap <silent> [App]vd :call VimuxSendManyKeys('C-d')<CR>
    nnoremap <silent> [App]vc :call VimuxSendManyKeys('C-c')<CR>
    nnoremap <silent> [App]vl :call VimuxSendManyKeys('C-c C-l')<CR>
    nnoremap <silent> [App]vk :call VimuxSendManyKeys(input('Keys? '))<CR>

    " Runner-related
    nnoremap <silent> [App]vo :call VimuxOpenRunner()<CR>
    nnoremap <silent> [App]vO :VimuxCloseRunner<CR>
    nnoremap <silent> [App]vp :VimuxTogglePane<CR>
    nnoremap <silent> [App]vi :VimuxInspectRunner<CR>
    nnoremap <silent> [App]vI :VimuxInterruptRunner<CR>
    nnoremap <silent> [App]vh :VimuxClearRunnerHistory<CR>
    nnoremap <silent> [App]vz :VimuxZoomRunner<CR>
    nnoremap <silent> [App]v[ :VimuxScrollUpInspect<CR>
    nnoremap <silent> [App]v] :VimuxScrollDownInspect<CR>

    function! VimuxSlime(text)
        let cmd = TmuxFormatCommand(a:text)

        if empty(cmd)
            return
        endif

        if !exists("g:VimuxRunnerIndex") || _VimuxHasRunner(g:VimuxRunnerIndex) == -1
            call VimuxOpenRunner()
        endif

        call VimuxSendText(cmd)
        call VimuxSendKeys('Enter')
    endfunction

    function! VimuxSendManyKeys(text)
        let keys = TmuxFormatKeys(a:text)

        if empty(keys)
            return
        endif

        if !exists("g:VimuxRunnerIndex") || _VimuxHasRunner(g:VimuxRunnerIndex) == -1
            call VimuxOpenRunner()
        endif

        for key in split(keys, '\s')
            call VimuxSendKeys(key)
        endfor
    endfunction

    " mhinz/vim-tmuxify
    let g:tmuxify_custom_command = 'tmux split-window -d -p 20'
    let g:tmuxify_map_prefix     = '[App]m'
    let g:tmuxify_global_maps    = 1

    nnoremap <silent> [App]mu :TxSendKey! 'q C-u'<CR>
    nnoremap <silent> [App]mm :TxSendKey! 'Enter'<CR>
    nnoremap <silent> [App]md :TxSendKey! 'C-d'<CR>

    nnoremap <silent> [App]tb :TxSigInt<CR>
    nnoremap <silent> [App]tc :TxClear<CR>
    nnoremap <silent> [App]tn :TxCreate<CR>
    nnoremap <silent> [App]tp :TxSetPane<CR>
    nnoremap <silent> [App]tq :TxKill<CR>
    nnoremap <silent> [App]tr :TxRun<CR>
    nnoremap <silent> [App]ts :TxSend<CR>
    nnoremap <silent> [App]tk :TxSendKey<CR>
    xnoremap <silent> [App]ts "my:TxSend(@m)<CR>
    nnoremap <silent> [App]tu :TxSendKey 'q C-u'<CR>
    nnoremap <silent> [App]tm :TxSendKey 'Enter'<CR>
    nnoremap <silent> [App]td :TxSendKey 'C-d'<CR>
endif

" janko-m/vim-test
if exists('*VimuxRunCommand')
    let g:test#strategy = 'vimux'
elseif exists(':Dispatch')
    let g:test#strategy = 'dispatch'
elseif has('gui_macvim')
    let g:test#strategy = 'terminal'
endif

nmap <silent> [App]tt :TestFile<CR>
nmap <silent> [App]tf :TestNearest<CR>
nmap <silent> [App]tl :TestLast<CR>
nmap <silent> [App]ta :TestSuite<CR>
nmap <silent> [App]tg :TestVisit<CR>

" sheerun/vim-polyglot
let g:polyglot_disabled = ['go']

" tpope/rails.vim
nnoremap <silent> [App]a :A<CR>
nnoremap <silent> [App]r :R<CR>

nnoremap [App]em :Emodel<Space>
nnoremap [App]ev :Eview<Space>
nnoremap [App]ec :Econtroller<Space>
nnoremap [App]ee :Emailer<Space>
nnoremap [App]eh :Ehelper<Space>
nnoremap [App]ed :Emigration<Space>
nnoremap [App]el :Elib<Space>
nnoremap [App]et :Etask<Space>
nnoremap [App]ej :Ejavascript<Space>
nnoremap [App]es :Estylesheet<Space>
nnoremap [App]et :Espec<Space>
xnoremap [App]ee :Rextract<Space>

" mattn/emmet-vim
let g:user_emmet_install_global  = 0
autocmd MyAutoCmd FileType eruby,haml,slim,jade,html,xml,css,sass,scss,less,html.handlebars,mustache EmmetInstall

" fatih/vim-go and garyburd/go-explorer
let g:go_highlight_functions         = 1
let g:go_highlight_methods           = 1
let g:go_highlight_structs           = 1
let g:go_highlight_interfaces        = 1
let g:go_highlight_operators         = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types       = 1

let g:go_fmt_command       = 'goimports'
let g:go_fmt_fail_silently = 1

if has_key(g:plugs, 'neosnippet.vim')
    let g:go_snippet_engine = 'neosnippet'
endif

let g:syntastic_go_checkers     = ['golint', 'govet', 'errcheck']
let g:neomake_go_enabled_makers = ['golint', 'govet', 'errcheck']

function! s:VimGoSetup()
    nmap [App]R <Plug>(go-run)
    nmap [App]B <Plug>(go-build)
    nmap [App]G <Plug>(go-generate)
    nmap [App]I <Plug>(go-install)
    nmap [App]T <Plug>(go-test)
    nmap [App]C <Plug>(go-coverage)
    nmap [App]V <Plug>(go-vet)
    nmap [App]N <Plug>(go-info)
    nnoremap [App]D :GeDoc<Space>
    nnoremap [App]P :GoPath<Space>
    nnoremap <silent> [App]E :GoRename<CR>
    nnoremap <silent> [App]F :GoImports<CR>
    nnoremap <silent> [App]K :GoErrCheck<CR>
    nnoremap <silent> [App]L :GoLint<CR>:GoMetaLinter<CR>

    nnoremap [App]gr :GoRun
    nnoremap [App]gb :GoBuild
    nnoremap [App]gg :GoGenerate
    nnoremap [App]gi :GoInstall
    nnoremap [App]ga :GoImportAs<Space>
    nnoremap [App]g, :GoImport<Space>
    nnoremap [App]g. :GoDrop<Space>
    nnoremap [App]gp :GoPath<Space>
    nnoremap [App]gs :GoOracleScope<Space>
    nnoremap [App]gm :GoDoc<Space>
    xnoremap <silent> [App]gm :GoDoc<CR>

    nmap [App]gcr <Plug>(go-run)
    nmap [App]gcb <Plug>(go-build)
    nmap [App]gcg <Plug>(go-generate)
    nmap [App]gci <Plug>(go-install)
    nmap [App]gct <Plug>(go-test)
    nmap [App]gcf <Plug>(go-test-func)
    nmap [App]gcc <Plug>(go-test-compile)
    nmap [App]gco <Plug>(go-coverage)
    nmap [App]gcv <Plug>(go-vet)

    nmap [App]gtf <Plug>(go-files)
    nmap [App]gtj <Plug>(go-deps)
    nmap [App]gtn <Plug>(go-info)
    nmap [App]gti <Plug>(go-import)
    nmap [App]gtr <Plug>(go-rename)

    nmap [App]goi <Plug>(go-implements)
    nmap [App]goe <Plug>(go-callees)
    nmap [App]gor <Plug>(go-callers)
    nmap [App]god <Plug>(go-describe)
    nmap [App]goc <Plug>(go-callstack)
    nmap [App]gof <Plug>(go-freevars)
    nmap [App]goc <Plug>(go-channelpeers)
    nmap [App]gos <Plug>(go-referrers)

    nmap [App]gdo <Plug>(go-doc)
    nmap [App]gds <Plug>(go-doc-split)
    nmap [App]gdv <Plug>(go-doc-vertical)
    nmap [App]gdt <Plug>(go-doc-tab)
    nmap [App]gdb <Plug>(go-doc-browser)

    nmap [App]gff <Plug>(go-def)
    nmap [App]gfs <Plug>(go-def-split)
    nmap [App]gfv <Plug>(go-def-vertical)
    nmap [App]gft <Plug>(go-def-tab)
endfunction

autocmd MyAutoCmd FileType go call s:VimGoSetup()

" morhetz/gruvbox
let g:gruvbox_contrast_dark  = 'hard'

" junegunn/seoul256.vim
let g:seoul256_background = 235
let g:seoul256_light_background = 254

" autocmd-related settings
augroup MyAutoCmd
    " Set file type
    autocmd BufNewFile,BufRead *.nvim setlocal filetype=vim
    autocmd BufNewFile,BufRead *.fastercsv,*.prawn setlocal filetype=ruby
    " autocmd FileType json setlocal syntax=javascript

    " Vim
    autocmd FileType vim setlocal keywordprg=:help

    " Help
    autocmd FileType help setlocal keywordprg=:help noexpandtab

    " Quickfix
    autocmd FileType qf setlocal winheight=15 nobuflisted

    " Ruby-related
    autocmd FileType ruby,eruby,yaml,haml,markdown,less,sass,scss,coffee,html.handlebars setlocal tabstop=2 shiftwidth=2

    " CSS / Less
    autocmd FileType css,less setlocal iskeyword+=-

    " SQL
    autocmd FileType sql setlocal omnifunc= commentstring=--\ %s

    " XML
    if executable('xmllint')
        autocmd FileType xml nnoremap <silent> g=
                    \ :execute 'silent! %' . printf("!env XMLLINT_INDENT='%s' xmllint --format --recover - 2>/dev/null", repeat(' ', exists('*shiftwidth') ? shiftwidth() : &shiftwidth))<CR>
    endif

    " Go
    autocmd FileType go,godoc,gedoc setlocal noexpandtab
    autocmd FileType godoc,gedoc    setlocal tabstop=8

    " Git
    autocmd FileType gitcommit setlocal textwidth=72 winheight=20 spell
    autocmd FileType git,gitconfig setlocal tabstop=8

    " q to close
    autocmd FileType help,qf,godoc,gedoc nmap <silent> <buffer> q :close<CR>

    " Folding
    autocmd FileType vim setlocal foldmethod=marker foldmarker={{{,}}}
    autocmd FileType nginx,puppet,c,javascript,go,less,css setlocal foldmethod=marker foldmarker={,}
augroup END

set background=dark
colorscheme gruvbox

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif

set secure

