" ========================= vundle 环境设置 ===============================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" 文字颜色主题
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'dracula/vim'

" 文件或者buffer列表
Plugin 'Shougo/unite.vim' 

" 状态栏
Plugin 'Lokaltog/vim-powerline'

" 自动缩进
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
" Plugin 'vim-scripts/DrawIt'
"
" markdown real time preview
Plugin 'iamcco/markdown-preview.vim'
" command: MarkdownPreview
" command: MarkdownPreviewStop

" git管理
"Plugin 'mhinz/vim-signify'

" 代码自动补全
Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'SirVer/ultisnips'
" 符号自动补全
Plugin 'https://github.com/jiangmiao/auto-pairs.git'

" shift-tab 跳出符号对

Bundle 'scrooloose/syntastic'

" vim-go
Plugin 'fatih/vim-go'

" 全局搜索
Plugin 'mileszs/ack.vim'
" ?    a quick summary of these keys, repeat to close
" o    to open (same as Enter)
" O    to open and close the quickfix window
" go   to preview file, open but maintain focus on ack.vim results
" t    to open in new tab
" T    to open in new tab without moving to it
" h    to open in horizontal split
" H    to open in horizontal split, keeping focus on the results
" v    to open in vertical split
" gv   to open in vertical split, keeping focus on the results
" q    to close the quickfix window
" 
" ?           帮助，显示所有快捷键
" Enter/o     打开文件
" O           打开文件并关闭Quickfix
" go          预览文件，焦点仍然在Quickfix
" t           新标签页打开文件
" q           关闭Quickfix

" 折叠修复
Plugin 'tmhedberg/SimpylFold'

" 插件列表结束
call vundle#end()
filetype plugin indent on
" ============================= 设置vim属性 =============================
" 设置leader键
let mapleader=";"

" 配色方案
set background=dark
" set background=light
"colorscheme solarized
"colorscheme molokai
"colorscheme phd
color dracula

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 设置markdown预览浏览器
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5

" 禁止折行
set nowrap

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

syntax keyword cppSTLtype initializer_list

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
" 色块宽度
"let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
":nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>

"let g:SignatureMap = {
   "\ 'Leader'             :  "m",
   "\ 'PlaceNextMark'      :  "m,",
   "\ 'ToggleMarkAtLine'   :  "m.",
   "\ 'PurgeMarksAtLine'   :  "m-",
   "\ 'DeleteMark'         :  "dm",
   "\ 'PurgeMarks'         :  "mda",
   "\ 'PurgeMarkers'       :  "m<BS>",
   "\ 'GotoNextLineAlpha'  :  "']",
   "\ 'GotoPrevLineAlpha'  :  "'[",
   "\ 'GotoNextSpotAlpha'  :  "`]",
   "\ 'GotoPrevSpotAlpha'  :  "`[",
   "\ 'GotoNextLineByPos'  :  "]'",
   "\ 'GotoPrevLineByPos'  :  "['",
   "\ 'GotoNextSpotByPos'  :  "mn",
   "\ 'GotoPrevSpotByPos'  :  "mp",
   "\ 'GotoNextMarker'     :  "[+",
   "\ 'GotoPrevMarker'     :  "[-",
   "\ 'GotoNextMarkerAny'  :  "]=",
   "\ 'GotoPrevMarkerAny'  :  "[=",
   "\ 'ListLocalMarks'     :  "ms",
   "\ 'ListLocalMarkers'   :  "m?"
"   \ }

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=24
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" 实时搜索
set incsearch
" 搜索高亮显示
set hlsearch
" 如果按小写字母 搜索不分大小写，按大写字母则只按大写搜索
set ignorecase smartcase 

" vim 自身命令行模式智能补全
set wildmenu

" YCM settings
" let g:ycm_key_list_select_completion = ['', '']
" let g:ycm_key_list_previous_completion = ['']
" let g:ycm_key_invoke_completion = '<C-Space>'

" UltiSnips setting
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" 设置字体
" set guifont = Source_Code_Pro:h15

" 使删除键能往上行删除
set backspace=2

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_fields = 1


" ====================== 快捷键设置区========================
" ack 设置快捷键
nmap <F4> :Ack<CR>
nmap <F5> :Ack<space>
" let g:solarized_termcolors=256

" 打开tagbar
nmap <F9> :TagbarToggle<CR>

" 切换buffer
" nmap <Leader>bn :bn<CR>
" nmap <Leader>bp :bp<CR>

" 启动时自动focus
let g:tagbar_autofocus = 1
"
" 启动时自动打开tagbar
" autocmd VimEnter * nested TagbarOpen
" 设置标签子窗口的宽度 
let tagbar_width=24
" tagbar 子窗口中不显示冗余帮助信息 
" let g:tagbar_compact=1

let g:go_gotags_bin='/Users/cye/tools/gopath/bin/gotags'
let ctagsbin = 'gotags'
" check if vim-go is available and has the binary
if !executable('gotags') && !exists("g:go_gotags_bin")
     let ctagsbin = expand(g:go_gotags_bin),
     endif

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
    \ 'ctagsbin'  : expand(g:go_gotags_bin), 
     \'ctagsargs' : '-sort -silent'
     \ }

nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

let g:go_fmt_command = "goimports"

" 快速跳转
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map <Leader><leader>. <Plug>(easymotion-repeat)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion"


nmap <leader>gi :GoImports<CR>
nmap <leader>gr :GoReferrers<CR>

nmap <leader>t :tabe<space>
nmap <leader>q :q
let g:solarized_degrade = 0

" 设置鼠标可用(滚动/选择)
set mouse=a

" 不显示缓存预览窗口(强迫症必备)
set completeopt=menu
set wrap

" 中文乱码解决
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

" 代码折叠
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1
" 用空格来折叠
nnoremap <space> za

" python 自动补全
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
