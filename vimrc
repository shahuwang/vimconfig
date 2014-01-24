execute pathogen#infect()
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'Blackrush/vim-gocode'
Bundle 'Valloric/YouCompleteMe'
set autochdir
set omnifunc=syntaxcomplete#Complete
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_smart_case =1
"let g:neocomplcache_min_syntax_length=1
"let g:neocomplcache_enable_auto_select=1
inoremap <expr><TAB> pumvisible() ?"\<Down>":"\<TAB>"
syntax on
set number
set modeline
set mouse=a
set autoindent
set ts=4 sts=4 sw=4 expandtab
set hlsearch
set linebreak
set textwidth=80
set showmatch

filetype plugin indent on 
filetype plugin on
colorscheme molokai
let g:molokai_original = 1
set runtimepath+=$GOROOT/misc/vim
autocmd FileType go compiler go
set nocompatible
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left=1
map <C-n> :NERDTreeToggle<CR>
set nobackup
let g:ycm_global_ycm_extra_conf = '/Users/guoku/.ycm_extra_conf.py'
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
set backspace=indent,eol,start
set completeopt-=preview
set completeopt=menuone,longest
set laststatus=2
autocmd FileType go autocmd BufWritePre <buffer> Fmt
imap <C-o> <C-x><C-o>
" Enable omni completion. 
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS 
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 
completefunc=youcompleteme#Complete
let g:ycm_global_ycm_extra_conf = ""
let g:ycm_key_list_select_completion = ['<TAB>','<Down>']
let g:godef_command="godef"
set macatsui
set macmeta
set fillchars+=stl:,stlnc:
let g:Powerline_cache_enabled=1
let g:Powerline_symbols = 'fancy'
set rtp+=/Library/Python/2.7/site-packages/Powerline-beta-py2.7.egg/powerline/bindings/vim
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
" For powerline font in MacVim
set guifont=Consolas\ for\ Powerline:h15
set t_Co=256


let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
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
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

  
