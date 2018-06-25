"NeoBundle Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
    endif
    " Required:
    set runtimepath+=~/neobundle.vim

    " Required:
    call neobundle#begin(expand('/home/sota/neobundle.vim'))

    " Let NeoBundle manage NeoBundle
    " Required:
    NeoBundleFetch 'Shougo/neobundle.vim'

    " Add or remove your Bundles here:
    NeoBundle 'scrooloose/nerdtree'
    "NeoBundle 'nathanaelkane/vim-indent-guides'
    NeoBundle 'justmao945/vim-clang'

    " set clang options for vim-clang
     let g:clang_c_options = '-std=gnu11'
     let g:clang_cpp_options = '-std=c++14 '
    " Re
    call neobundle#end()
    let g:indent_guides_enable_on_vim_startup = 1
    " Required:
    filetype plugin indent on

    " If there are uninstalled bundles found on startup,
    " this will conveniently prompt you to install them.
    NeoBundleCheck
"End NeoBundle Scripts-------------------------




nnoremap <silent><C-e> :NERDTreeToggle<CR>



:set fileencodings=utf-8,cp932,euc-jp,sjis

:syntax on

:set encoding=utf-8

:set fileformat=unix

set number

set cursorline

set virtualedit=onemore

set smartindent

set wildmode=list:longest

"serch

set ignorecase


set smartcase
set wrapscan
set incsearch
set hlsearch

set showmatch

set smartindent

set title

set guioptions+=a
