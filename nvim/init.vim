set nocompatible
set backspace=indent,eol,start
set autoindent

" set spell spelllang=en_us
set tabstop=4
set shiftwidth=4
set expandtab
set list
set listchars=tab:>-

"set editing-mode vi
set clipboard=unnamed
set encoding=utf-8
set showmatch
set noshowmode

filetype indent on
filetype plugin on

syntax enable

set number

" Python Support
autocmd Filetype python setlocal ts=4 sw=4 colorcolumn=80
set tabstop=4
set expandtab
let python_highlight_all=1

" Java Support
autocmd Filetype java setlocal ts=4 sw=4

autocmd Filetype dart setlocal ts=2 sw=2

" Ini Support
autocmd Filetype dosini setlocal ts=4 sw=4 

" Javascript and Typescript support
autocmd Filetype json setlocal ts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sw=2 colorcolumn=120
autocmd Filetype typescript setlocal ts=2 sw=2 sts=4 colorcolumn=120

" HTML Support
autocmd Filetype html setlocal ts=2 sw=2 colorcolumn=120

" Kotlin Support
autocmd Filetype kotlin setlocal ts=4 sw=4 colorcolumn=100

" RST
autocmd FileType rst setlocal expandtab sw=4 ts=4 colorcolumn=80

" MD
autocmd FileType markdown setlocal expandtab sw=4 ts=4 colorcolumn=80

" Colorschemes
set background=dark

" Shift tab to detab
vnoremap <S-Tab> <<
vnoremap <Tab> >>
inoremap <S-Tab> hello 
"inoremap <S-Tab> <C-d>
        
" System clipboard

set clipboard=unnamed

" VIM in the Shell

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Code Folding

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" ALE settings

set completeopt+=noinsert
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 1
let g:ale_set_quickfix = 1
let g:ale_open_list = 1 
let g:ale_pattern_options = {
\   'build.gradle.kts': {'ale_enabled': 0},
\   'angular.json': {'ale_enabled': 0},
\   'package.json': {'ale_enabled': 0},
\   'node_modules/*': {'ale_enabled': 0}
\}
let g:ale_linters = {
\   'typescript': ['tslint'],
\   'javascript': ['eslint']
\}
let g:ale_open_list = 1

" Vim Airline

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'
set t_Co=256

" NerdTree
let NERDTreeIgnore = ['\.pyc$', '\.swp$', '\.git$', '.idea', 'node_modules', '.cache', '.pants.d', '.pids', '.pytest_cache', '.pants.workdir.file_lock', '.DS_Store', '.gradle[[dir]]', 'bazel-', '.angular', 'dist/']
:map <leader>n :NERDTree<enter>
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize=50

" NerdTree Commentator
let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = {'python': {'left': '#:'}}
:map <C-\> <Leader>c<space>

" Templates
augroup templates
    autocmd!
    autocmd BufRead *.py call s:ApplyTemplate()
    autocmd BufRead *.component.ts call s:ApplyComponent()
    autocmd BufRead *.module.ts call s:ApplyModule()
    autocmd BufRead *.routes.ts call s:ApplyRoutes()

    function! s:ApplyTemplate()
        if getfsize(expand('%')) == 0
            execute "0r ~/.vim/templates/skeleton." . expand('%:e')
            execute "%s/__CLASS_NAME__/" . expand('%:t:r') . "/e"
        endif
    endfun

    function! s:ApplyComponent()
        if getfsize(expand('%')) == 0
            execute "0r ~/.vim/templates/skeleton.component.ts" 
            execute "%s/__CLASS_NAME__/" . expand('%:t:r') . "/e"
        endif
    endfun

    function! s:ApplyModule()
        if getfsize(expand('%')) == 0
            execute "0r ~/.vim/templates/skeleton.module.ts" 
            execute "%s/__CLASS_NAME__/" . expand('%:t:r') . "/e"
        endif
    endfun

    function! s:ApplyRoutes()
        if getfsize(expand('%')) == 0
            execute "0r ~/.vim/templates/skeleton.routes.ts" 
            execute "%s/__CLASS_NAME__/" . expand('%:t:r') . "/e"
        endif
    endfun
augroup END

" Dadbod UI

let g:db_ui_use_nerd_fonts = 1

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-dotenv'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jmcantrell/vim-virtualenv'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'
Plug 'Rykka/riv.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'dense-analysis/ale'
Plug 'heavenshell/vim-pydocstring'
Plug 'saltstack/salt-vim'
Plug 'stephpy/vim-yaml'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'udalov/kotlin-vim'
Plug 'Yggdroot/indentLine'
Plug 'google/vim-maktaba'
Plug 'bazelbuild/vim-bazel'
Plug 'tibabit/vim-templates'
Plug 'OmniSharp/omnisharp-vim'
Plug 'jparise/vim-graphql'
Plug 'hashivim/vim-terraform'
Plug 'kevinoid/vim-jsonc'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'dart-lang/dart-vim-plugin'

call plug#end()
