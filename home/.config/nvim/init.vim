call plug#begin('~/.config/nvim/plugged')
" Plugins will go here in the middle.
"
Plug 'raimondi/delimitmate'
Plug 'Valloric/ListToggle'
Plug 'vim-scripts/matchit.zip'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'altercation/vim-colors-solarized'
Plug 'jistr/vim-nerdtree-tabs'

" LANGUAGE SPECIFIC SYNTAX
Plug 'HerringtonDarkholme/yats.vim'

" DEOCOMPLETE STUFF
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-jedi'
Plug 'tweekmonster/deoplete-clang2'
Plug 'mhartington/nvim-typescript'

" LINTING
Plug 'neomake/neomake'

call plug#end()


set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

"set term=xterm-256color
"set t_Co=256
"set termguicolors
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

filetype plugin indent on

set mouse=a

set laststatus=2
set statusline+=%F
set showtabline=2
syntax enable

" CTAGS
:set tags=./tags;

" SOLARIZED
set background=light
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

" YOUCOMPLETEME
"let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/global_ycm_extra_conf.py"
"let g:ycm_min_num_of_chars_for_completion = 0
"let g:ycm_autoclose_preview_window_after_completion = 1


"if !exists("g:ycm_semantic_triggers")
"	let g:ycm_semantic_triggers = {}
"endif
"let g:ycm_semantic_triggers['typescript'] = ['.']


" NERDTREE/TABS
let g:nerdtree_tabs_open_on_console_startup=2
map <C-n> :NERDTreeTabsToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeMouseMode=2



" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_python_flake8_post_args='--ignore=E,W'

" Deoplete
let g:deoplete#enable_at_startup = 1



" NEOMAKE
" When reading a buffer (after 1s), and when writing.
call neomake#configure#automake('rw', 500)
" When writing a buffer, and on normal mode changes (after 750ms).
"call neomake#configure#automake('nw', 750)
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_python_flake8_maker = {
	\ 'args': ['--ignore=E,W']
	\ }
