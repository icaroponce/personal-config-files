set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'csscomb/vim-csscomb.git'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'isRuslan/vim-es6'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline'
Plugin 'flazz/vim-colorschemes'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()            " required
filetype plugin indent on    " required

let g:user_emmet_settings = {
\	'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

map <C-h> :NERDTreeToggle<CR>

""beautifiers
"for js
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
"for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
"for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType javascript.jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType javascript.jsx vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
"for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
"for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>


"for html/js/jsx/ruby files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 
autocmd Filetype javascript setlocal ts=2 sw=2 
autocmd Filetype javascript.jsx setlocal ts=2 sw=2
autocmd Filetype jsx setlocal ts=2 sw=2 
autocmd Filetype ruby setlocal ts=2 sw=2 

"for python/css files, 4 spaces
autocmd Filetype python setlocal ts=4 sw=4 sts=4 
autocmd Filetype css setlocal ts=4 sw=4 sts=0 

"by default, the indent is 4 spaces. 
set sts=2
set sw=4
set sw=4
set expandtab

let g:airline_powerline_fontsi = 1 
let g:Powerline_symbols='unicode'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

set ttimeoutlen=50
set encoding=utf-8
set t_Co=256
set laststatus=2

colorscheme slate
