set nocompatible
au BufWritePost .vimrc so ~/.vimrc
syntax enable
call pathogen#infect()
filetype plugin indent on
set tags=tags;
set tags+=$HOME/.vim/tags/python26.ctags
set tags+=$HOME/.vim/tags/django-tags.ctags
let python_highlight_all = 1
set showcmd
set showmode
set backspace=indent,eol,start
set hidden
set wildmenu
set wildmode=list:longest
set ignorecase
set smartcase
set number
set ruler
set incsearch
set hlsearch
set showmatch
set wrap
set visualbell
set directory=~/.vim/tmp//
set ls=2
set t_Co=256
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
colorscheme molokai
set guifont=Monaco:h12
set tabstop=4
set shiftwidth=4
let g:ragtag_global_maps=1
nmap <D-x> :TagbarToggle<CR>
noremap <D-[> :bprev<CR>
noremap <D-]> :bnext<CR>
noremap <D-V> :vsp<CR>
noremap <D-H> :sp<CR>
noremap <C-g> :!/usr/bin/ctags -R -f --c++-kinds=+p --fields=+iaS --extra=+qf .<CR>
inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>
vnoremap < <gv
vnoremap > >gv
map H ^
map L $
filetype plugin on
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
let g:pydiction_location='/Users/mkhan/.vim/after/ftplugin/complete-dict'
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
autocmd BufEnter * silent! lcd %:p:h
