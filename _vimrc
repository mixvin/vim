set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set guifont=Consolas:h10:cRUSSIAN
set nu
colorscheme darkblue
set fileencodings=utf-8,default
set fileencoding=utf-8
set nowrap
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set backupdir=c:/Temp/Vim
set directory=c:/Temp/Vim
set lines=55 columns=170
set langmap=ёйцукенгшщзхъфывапролджэячсмитью;`qwertyuiop[]asdfghjkl\;'zxcvbnm.,ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>
winpos 150 0
winsize 200 51

nmap <F9> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F7> :BuffergatorToggle<CR>

let g:tagbar_ctags_bin = $VIM."\\tools\\ctags58\\ctags.exe"
let g:NERDTreeWinSize = 50

set guioptions=gtb

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%#error#%{StatuslineTabWarning()}%{StatuslineTrailingSpaceWarning()}%*%=[buff:%n]%c,%l/%L\ %P\ [%{strftime('%c')}]

set laststatus=2

set listchars=tab:»·,trail:·,nbsp:·

set path=.,,**

"set encoding=utf-8
source $VIM/config/mixed_whitespaces.vim
source $VIM/config/dbext_config.vim

"vundle
filetype off
set rtp+=$VIM/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'mixvin/nerdtree'
Bundle 'vim-scripts/vimwiki'
Bundle 'majutsushi/tagbar'
Bundle 'dbext.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'mixvin/Conque-Shell'
"Bundle 'Shougo/vimshell'
"Bundle 'Shougo/vimproc'
Bundle 'kien/ctrlp.vim'
Bundle 'michalliu/jsruntime.vim'
"Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/Windows-PowerShell-Syntax-Plugin'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'vim-scripts/actionscript.vim--Cuss'
Bundle 'StrayFeral/DevLife'
Bundle 'xolox/vim-session'
Bundle 'xolox/vim-misc'
Bundle 'PAntoine/TimeKeeper'
Bundle 'PAntoine/vimgitlog'
Bundle 'jceb/vim-orgmode'
filetype plugin indent on

"Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

"ConqueTerm
let g:ConqueTerm_SessionSupport = 1
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_PyExe = '\tools\Python27'

"actionscript.vim
au Bufread,BufNewFile *.as set filetype=actionscript

"Buffergator
let g:buffergator_viewport_split_policy = "R"
let g:buffergator_autoexpand_on_split = 0

"CtrlP
let g:ctrlp_root_markers = ['Sources']
let g:ctrlp_custom_ignore = { 'dir': '\v(packages|bin|obj)$' }

"vim-session
let g:session_autosave = 'no'
