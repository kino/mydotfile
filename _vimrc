"=======================================================================
"General settings
"=======================================================================
set nocp
set nu
set incsearch
set hls
set cin
set ai
set cmdheight=3
set backspace=indent,eol,start
let mapleader=","
set ffs=unix,dos
"nmap <silent> <leader>ww <C-W>w
nmap <silent> <leader>wh <C-W>h
nmap <silent> <leader>wj <C-W>j
nmap <silent> <leader>wk <C-W>k
nmap <silent> <leader>wl <C-W>l
"nmap <silent> <leader>wt <C-W>t
nmap <silent> <leader>wb <C-W>b
nmap <silent> <leader>lu dd2kp
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set autochdir
set virtualedit=all
set ts=4
set expandtab
set sw=4

nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

"=======================================================================
" Maximize the Window
"=======================================================================
if (has("gui_running"))
    if has('win32')
        au GUIEnter * simalt ~x
    else
        au GUIEnter * call MaximizeWindow()
    endif
endif

function! MaximizeWindow()
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

"=======================================================================
"colorsheme and font
"=======================================================================
"colo rainbow_neon
"set guifont=Monaco:h12 
set guifont=Monaco:h10 
"set guifontwide=幼圆:h11 
"======================================================================
"backup and swap file
"=======================================================================
set directory=/tmp/vim,~/tmp
set backupdir=/tmp/vim,~/tmp
"set patchmode=.orig

"=======================================================================
"auto complete
"=======================================================================
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete

"=======================================================================
"Encoding settings
"=======================================================================
set encoding=gbk
set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8
set fileencodings=utf-8,gbk,default,latin1,ucs-bom

filetype plugin indent on
"=======================================================================
"Syntax settings
"=======================================================================
syntax on
if (has("gui_running"))
	set nowrap
	set guioptions+=b
	"colo rainbow_neon_totoro
	"set guifontset=microsoft\ yahei\ 13
else
	set wrap
	"colo ron
endif

"=======================================================================
"Vundle settings
"=======================================================================

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" For Linux
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

" For windows
set rtp+=~/vimfiles/bundle/vundle/
let path='~/vimfiles/bundle'
call vundle#rc(path)

" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
"=======================================================================
"====Plugins from Github
"=======================================================================
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai'
colorscheme molokai


Plugin 'ianva/vim-youdao-translater'
vnoremap <silent> <C-T> <Esc>:Ydv<CR> 
nnoremap <silent> <C-T> <Esc>:Ydc<CR> 
noremap <leader>yd :Yde<CR>

Plugin 'junegunn/goyo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'plasticboy/vim-markdown'
Plugin 'leshill/vim-json'
Plugin 'alfredodeza/jacinto.vim' "Format and Validate Json
Plugin 'airblade/vim-gitgutter'
Plugin 'yonchu/accelerated-smooth-scroll'


Plugin 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<CR>

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey


Plugin 'kino/vimwiki_md2html'
Plugin 'vimwiki/vimwiki'

"=======================================================================
"====Plugins from http://vim-scripts.org/vim/scripts.html
"=======================================================================
Plugin 'L9'
Plugin 'FuzzyFinder'


"=======================================================================
"====Plugins not on Github
"=======================================================================
Plugin 'git://git.wincent.com/command-t.git'


"=======================================================================
"====Plugins from Local
"=======================================================================
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...

"=======================================================================
"====On filetype
"=======================================================================
filetype plugin indent on


"=======================================================================
"====Vundle Help
"=======================================================================
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
"
"


" vimwiki
"let g:vimwiki_ext2syntax = {'.md': 'markdown'} 
"let g:vimwiki_ext2syntax = {} 
"     是否在词条文件保存时就输出html  这个会让保存大词条比较慢所以我默认没有启用  有需要的话就把这一行复制到下面去
"     \ 'auto_export': 1,
" 多个维基项目的配置
let g:vimwiki_list = [
    \     {
    \         'path': 'e:/github/note-wiki/notes-md/',
    \         'template_path': 'e:/github/note-wiki/templates/',
    \         'template_default': 'default-md',
    \         'ext': '.md',
    \         'template_ext': '.html',
    \         'diary_link_count': 5,
    \         'syntax': 'markdown',
    \         'custom_wiki2html': 'D:/Users/xingchaowang/vimfiles/bundle/vimwiki_md2html/misaka_md2html.py'
    \     },
    \     {
    \         'path': 'e:/github/note-wiki/ctrip/',
    \         'template_path': 'e:/github/note-wiki/templates/',
    \         'template_default': 'ctrip_default',
    \         'template_ext': '.html',
    \         'diary_link_count': 5
    \     },
    \     {
    \         'path': 'e:/github/note-wiki/notes/',
    \         'template_path': 'e:/github/note-wiki/templates/',
    \         'template_default': 'default',
    \         'template_ext': '.html',
    \         'diary_link_count': 5
    \     }
	\ ]

" 对中文用户来说，我们并不怎么需要驼峰英文成为维基词条
let g:vimwiki_camel_case = 0
" 标记为完成的 checklist 项目会有特别的颜色
let g:vimwiki_hl_cb_checked = 1
" 我的 vim 是没有菜单的，加一个 vimwiki 菜单项也没有意义
let g:vimwiki_menu = ''
" 是否开启按语法折叠  会让文件比较慢
"let g:vimwiki_folding = 1
" 是否在计算字串长度时用特别考虑中文字符
let g:vimwiki_CJK_length = 1
" 详见下文...
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,del,br,hr,div,code,h1'
" 开启标题编号，0不开启，其他值为从几级标题开启
let g:vimwiki_html_header_numbering = 2
