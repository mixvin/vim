source $VIM/config/mixed_whitespaces.vim
source $VIM/config/dbext_config.vim

set guifont=Consolas:h11:cRUSSIAN
set nu
set hlsearch
set incsearch
colorscheme darkblue
set fileencodings=utf-8,default
set fileencoding=utf-8
set nowrap
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set lines=50 columns=170
set langmap=ёйцукенгшщзхъфывапролджэячсмитью;`qwertyuiop[]asdfghjkl\;'zxcvbnm.,ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>
set wildmode=list,full
set guioptions=gtb
set statusline=%f[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%#error#%{StatuslineTabWarning()}%{StatuslineTrailingSpaceWarning()}%*%=[buff:%n]%c,%l/%L\ %P\ [%{strftime('%c')}]
hi StatusLine ctermfg=0
set laststatus=2
set listchars=tab:»·,trail:·,nbsp:·
set path=.,,**
set backupdir=~/.vim/swp
set directory=~/.vim/swp

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

nmap <F9> :NERDTreeToggle<CR>

let g:syntastic_javascript_checkers = ['jshint', 'jscs']
