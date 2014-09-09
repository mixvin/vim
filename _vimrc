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

imap <C-j> <Down>
cmap <C-j> <Down>
imap <C-k> <Up>
cmap <C-k> <Up>
imap <C-h> <Left>
cmap <C-h> <Left>
imap <C-l> <Right>
cmap <C-l> <Right>
imap jj <Esc>

let g:tagbar_ctags_bin = $VIM."\\tools\\ctags58\\ctags.exe"
let g:NERDTreeWinSize = 50

set guioptions=gtb

set statusline=%f[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%#error#%{StatuslineTabWarning()}%{StatuslineTrailingSpaceWarning()}%*%=[buff:%n]%c,%l/%L\ %P\ [%{strftime('%c')}]

set laststatus=2

set listchars=tab:»·,trail:·,nbsp:·

set path=.,,**

"set encoding=utf-8
source $VIM/config/mixed_whitespaces.vim
source $VIM/config/dbext_config.vim

"vundle
filetype off
set rtp+=$VIM/bundle/vundle.vim"/
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/vimwiki'
Plugin 'majutsushi/tagbar'
Plugin 'dbext.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mixvin/Conque-Shell'
"Plugin 'Shougo/vimshell'
"Plugin 'Shougo/vimproc'
Plugin 'kien/ctrlp.vim'
Plugin 'michalliu/jsruntime.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/Windows-PowerShell-Syntax-Plugin'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'vim-scripts/actionscript.vim--Cuss'
Plugin 'StrayFeral/DevLife'
Plugin 'PAntoine/TimeKeeper'
Plugin 'PAntoine/vimgitlog'
Plugin 'jceb/vim-orgmode'
Plugin 'sjl/gundo.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'rhysd/clever-f.vim'
Plugin 'rhysd/open-pdf.vim'
"Plugin 'actionshrimp/vim-xpath'
Plugin 'wesleyche/SrcExpl'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-easytags'

call vundle#end()
filetype plugin indent on

"Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

"ConqueTerm
let g:ConqueTerm_SessionSupport = 1
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_Color = 1
let g:ConqueTerm_ReadUnfocused = 1

"actionscript.vim
au Bufread,BufNewFile *.as set filetype=actionscript

"Buffergator
let g:buffergator_viewport_split_policy = "R"
let g:buffergator_autoexpand_on_split = 0

"CtrlP
let g:ctrlp_root_markers = ['Sources', 'trunc']
let g:ctrlp_custom_ignore = { 'dir': '\v(packages|bin|obj)$' }

"vim-session
let g:session_autosave = 'no'

"open-pdf
let g:pdf_convert_on_edit = 1

"SrcExpl
nmap <F6> :SrcExplToggle<CR>
let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
        \ "_NERD_tree_", 
        \ "Source_Explorer" 
    \ ] 
let g:SrcExpl_searchLocalDef = 1
let g:SrcExpl_prevDefKey = "<F3>" 
let g:SrcExpl_nextDefKey = "<F4>" 
let g:SrcExpl_isUpdateTags = 0

"easytags
let g:easytags_cmd = "/ctags58/ctags"
