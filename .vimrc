" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

set pastetoggle=<F9>
set sw=4
set ts=4
set et
set expandtab
"set smarttab
set smartindent
set lbr
set fo+=mB
set sm
set noswapfile
set nobackup
set selection=inclusive
set mousemodel=popup

syntax on
set cul "高亮光标所在行
set cuc
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示
set go=             " 不要图形按钮
color ron     " 设置背景主题
set ruler           " 显示标尺
set showcmd         " 输入的命令显示出来，看的清楚些
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)
""set foldmethod=manual   " 手动折叠
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
" 显示中文帮助
if version >= 603
        set helplang=cn
        set encoding=utf-8
endif
" 统一缩进为4
set softtabstop=4
" 使用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
"set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 总是显示状态行
"set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目

"列出当前目录文件
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
"打开树状文件目录
map <C-F3> \be

if has("autocmd")
      autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal g`\"" |
          \ endif
endif
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全
set completeopt=preview,menu
"自动保存
set autowrite
"禁止生成临时文件
set nobackup
"搜索忽略大小写
set ignorecase
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name"    " 按照名称排序
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口
let Tlist_Compart_Format = 1    " 压缩方式
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer
""let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags
""let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树
"let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
"设置tags
set tags=tags;

"
"ctrlp设置
"
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v\.(exe|so|dll)$'
let g:ctrlp_extensions = ['funky']

let NERDTreeIgnore=['\.pyc']
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
