set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
Plugin 'L9'
Plugin 'wincent/command-t'
Plugin 'tomasr/molokai'
Plugin 'nvie/vim-flake8'
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-powerline'
Plugin 'hallettj/jslint.vim'
Plugin 'fatih/vim-go'
Plugin 'Blackrush/vim-gocode'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dgryski/vim-godef'
Plugin 'nsf/gocode',{'rtp':'vim/'}
Plugin 'jiangmiao/auto-pairs'
Plugin 'hynek/vim-python-pep8-indent'
"Plugin 'bling/vim-airline'
"'\be' (normal open) or
"'\bs' (force horizontal split open) or
"'\bv' (force vertical split open)
Plugin 'vim-scripts/bufexplorer.zip'
call vundle#end()
filetype plugin indent on
filetype on
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
nmap <F12> :MBEToggle<CR>
set autochdir
set scrolloff=15
"保存的时候进行格式判断
autocmd BufWritePost *.py call Flake8()
let g:tagbar_ctags_bin = 'ectags'
autocmd FileType python setlocal completeopt-=preview
autocmd FileType go setlocal completeopt-=preview
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
syntax on
filetype plugin indent on
filetype plugin on
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
\set guioptions-=T <Bar>
\set guioptions-=m <bar>
\else <Bar>
\set guioptions+=T <Bar>
\set guioptions+=m <Bar>
\endif<CR>
set showcmd
set foldmethod=indent
set foldlevel=99
set hlsearch
set linebreak
set guifont=Consolas\ for\ Powerline\ 10
set t_Co=256
colorscheme molokai
let g:molokai_original = 1
let g:flake8_ignore=""
set mousemodel=popup
set mouse=nv
set selection=exclusive
set selectmode=mouse,key
set ttymouse=xterm2
set novisualbell
set vb t_vb=
set ruler
let g:Powerline_symbols = 'fancy'
let g:JSLintHighlightErrorLine = 0
set omnifunc=syntaxcomplete#Complete
autocmd FileType go compiler go
autocmd FileType go autocmd BufWritePre <buffer> Fmt
imap <C-o> <C-x><C-o>
let g:godef_command="godef"
let g:ycm_global_ycm_extra_conf = '/home/rickey/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<TAB>','<Down>']
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
let g:tagbar_type_go = {
\ 'ctagstype' : 'go',
\ 'kinds' : [
\ 'p:package',
\ 'i:imports:1',
\ 'c:constants',
\ 'v:variables',
\ 't:types',
\ 'n:interfaces',
\ 'w:fields',
\ 'e:embedded',
\ 'm:methods',
\ 'r:constructor',
\ 'f:functions'
\ ],
\ 'sro' : '.',
\ 'kind2scope' : {
\ 't' : 'ctype',
\ 'n' : 'ntype'
\ },
\ 'scope2kind' : {
\ 'ctype' : 't',
\ 'ntype' : 'n'
\ },
\ 'ctagsbin' : 'gotags',
\ 'ctagsargs' : '-sort -silent'
\ }

