" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
set nocompatible               " be iMproved  
filetype off                   " required!  
      
colorscheme molokai

set number
set autoindent " same level indent
set smartindent " next level indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设定默认解码
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
language message zh_CN.utf-8
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"set font
"set guifont=Nsimsun
 
 
" 不要使用vi的键盘模式，而是vim自己的
"set nocompatible
 
" 在处理未保存或只读文件的时候，弹出确认
set confirm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不要备份文件（根据自己需要取舍）
set nobackup
 
" 不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide
 
" 字符间插入的像素行数目
set linespace=0
 
" 增强模式中的命令行自动完成操作
set wildmenu
 
" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
 
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
 
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
 
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
 
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
 
" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI
 
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
 
" 不让vim发出讨厌的滴滴声
set noerrorbells
 
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch
 
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5
 
" 在搜索的时候忽略大小写
set ignorecase
 
" 高亮被搜索的句子（phrases）
set hlsearch
 
" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch
 
" 输入:set list命令是应该显示些啥？
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
 
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=5
 
" 不要闪烁
set novisualbell
 
" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
 
" 总是显示状态行
set laststatus=2
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn
 
" 继承前一行的缩进方式，特别适用于多行注释
set autoindent
set wrap
 
" 为C程序提供自动缩进
set smartindent
 
" 使用C样式的缩进
set cindent
 
" 制表符为4
 
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
 
" 不要用空格代替制表符
set noexpandtab
 
" 不要换行
"set nowrap
 
" 在行和段开始处使用制表符
set smarttab

"进行版权声明的设置
"添加或更新头
map <F4> :call TitleDet()<cr>'s
function AddTitle()
    call append(0,"/*=============================================================================")
    call append(1,"#")
    call append(2,"# Author: Zeyuan Jin - kingzeyuan2014@qq.com")
    call append(3,"#")
    call append(4,"# QQ : 1538964819")
    call append(5,"#")
    call append(6,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(7,"#")
    call append(8,"# Filename: ".expand("%:t"))
    call append(9,"#")
    call append(10,"# Description: ")
    call append(11,"#")
    call append(12,"=============================================================================*/")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf
"更新最近修改时间和文件名
function UpdateTitle()
    normal m'
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet()
    let n=1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction

"设置python文件头
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    call append(2, "# Pw @ " . strftime('%Y-%m-%d %T', localtime()))
    normal G
    normal o
    normal o
endf

autocmd bufnewfile *.py call HeaderPython()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 设置matlab语言的ctags
autocmd FileType matlab map <F8> :!Ctags --langdef=matlab --langmap=matlab.m --regex-matlab="/^function[ \t]*\\[.*\\][ \t]*=[ \t]*([a-zA-Z0-9_]+)/\1/f,function/" --regex-matlab="/^function[ \t]*[a-zA-Z0-9_]+[ \t]*=[ \t]*([a-zA-Z0-9_]+)/\1/f,function/" --regex-matlab="/^function[ \t]*([a-zA-Z0-9_]+)[^=]*$/\1/f,function/" --regex-matlab="/^.*\s*function\s*(\w+)\s*=\s*(\w+)\s*\(.*$/\2/f,function/" --regex-matlab="/^.*\s*function\s*(\w+)\s*\(.*$/\1/f,function/" --languages=matlab --extra=+q --excmd=pattern -R .<CR>:call EditTagFile()<CR>
" 编辑Tag文件
function EditTagFile()
    exe ':e tags'
    for lineNum in range(line('^'), line('$'))
        " 得到每一行的内容
        let lineStr = getline(lineNum)
        if matchstr(lineStr, '^!') == ""
            let fileName = matchstr(lineStr, '\v\\\zs((\w|_)*)\ze(\.m)')
            let tagName = matchstr(lineStr, '\v^\zs(\S*)\ze(\t)')
            if fileName != tagName
                let newLineStr = fileName.'.'.lineStr
                call setline(lineNum, newLineStr)
            endif
        else
            if matchstr(lineStr, '^!_TAG_FILE_SORTED') != ""
                let startStr = matchstr(lineStr,'\v\zs(^)\S*\ze(\t)')
                let endStr = matchstr(lineStr, '\v\d\t\zs(.*)\ze($)')
                let newLineStr = startStr."\t"."0"."\t".endStr
                call setline(lineNum, newLineStr)
            endif
        endif
    endfor
    exe ':w'
    exe ':bdelete tags'
endfunction
autocmd FileType matlab map <C-]> :call MyFindTag() <CR>zRz.
" 搜索tag
function MyFindTag()
    let tagFullName = expand("<cWORD>")
    if matchstr(tagFullName, '\v\(') != ""
        let tagFullName = matchstr(tagFullName, '\v(\w|_|\.)*\ze(\()')
    end
    let tagName = expand("<cword>")
    if tagName == tagFullName
        " 是否已在函数定义位置
        let lineStrTemp = getline('.')
        if matchstr(lineStrTemp, '\v^\s*\zs(function)\ze(\s)') != ""
            return
        else
            exe ':ta '.tagName
        endif
    else
        let objName = matchstr(tagFullName, '\v\zs(.*)\ze(\.)')
        let funcName = matchstr(tagFullName, '\v\.\zs(\w+)')
        " 类中定义的子函数
        if objName == "obj"
            for lineNumTemp in range(line('^'), line('$'))
                let lineStrTemp = getline(lineNumTemp)
                if matchstr(lineStrTemp, '\v^\s*\zs(classdef)\ze(\s)') != ""
                    let className = matchstr(lineStrTemp, '\v^\s*classdef\s*\zs((\w|_)*)')
                    " exe ':tag '.tagName
                    break
                endif
            endfor
        else
            " 得到类的定义函数
            let endLineNum = line('.')
            while 1
                let isFindName = 0
                exe ':echo '.isFindName
                for lineNum in range(line('^'), endLineNum - 1)
                    " 得到每一行的内容
                    let lineStr = getline(lineNum)
                    if matchstr(lineStr, '\v^\s*\zs('.objName.')\s*\=') != ""
                        if matchstr(lineStr, '\v^\s*\zs('.objName.')\s*\=\s*'.objName.'\.') == ""
                            " 得到类名字
                            let objName = matchstr(lineStr, '\v\=\s*\zs((\w|_)*)\ze(\(|;)')
                            let endLineNum = lineNum
                            let isFindName = 1
                            break
                        end
                    endif
                endfor
                if isFindName == 0 || endLineNum <= 0
                    let className = objName
                    break
                endif
            endwhile
        endif
        " 得到要搜索的tag的名字
        let tagName = className.'.'.funcName
        exe ':tag '.tagName
    endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map

nmap , <leader>

let g:vim_debug_disable_mappings = 1

set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
      
" let Vundle manage Vundle  
" required!  
Bundle 'gmarik/vundle'  
" My Bundles here:  
"  
"  powerline
"Bundle 'Lokaltog/vim-powerline'
"	let Powerline_symbols='unicode'
"	let g:Powerline_symbols = 'fancy'
"	let g:syntastic_python_flake8_args = '--ignore=E927,W191,E501,E121,E122,E123,E128,E225,W291,E126'
"	let b:syntastic_checkers = ['flake8']
	set laststatus=2
	set t_Co=256

"syntastic
Bundle 'scrooloose/syntastic'
	let g:syntastic_error_symbol = '✗'	"set error or warning signs
	let g:syntastic_warning_symbol = '⚠'
	let g:syntastic_check_on_open=1
	let g:syntastic_enable_highlighting = 0

""""nerdtree
Bundle 'scrooloose/nerdtree'
	let NERDTreeWinPos='left'
	let NERDTreeWinSize=31
	let NERDTreeChDirMode=1

Bundle 'The-NERD-Commenter'


"""""""""""""taglist
"Bundle 'taglist.vim'
	"let Tlist_Show_One_File=1
	"let Tlist_Exit_OnlyWindow=1
Bundle 'tagbar'
	let g:tagbar_ctags_bin='/usr/bin/ctags'
	let g:tagbar_width=30
	nmap <F8> :TagbarToggle<CR>


"bufexplorer.zip
Bundle 'bufexplorer.zip'
	let g:bufExplorerDefaultHelp=0
	let g:bufExplorerSortBy='mru'
	let g:bufExplorerSplitRight=1
	let g:bufExplorerSplitVertSize=30
	let g:bufExplorerSplitVertical=1
	let g:bufExplorerMaxHeight=25
	let g:bufExplorerUseCurrentWindow=1
	let g:bufExplorerShowRelativePath=1
	

"winmanager
"Bundle 'winmanager'


Bundle 'rking/ag.vim'
	let g:ag_prg="/usr/bin/rg --column"
	cnoreabbrev Ag Ag!
	nnoremap <Leader>a :Ag! <C-R>=expand('<cword>')<CR><CR>
"Bundle 'mileszs/ack.vim'
"	let g:ackprg = 'ag --vimgrep'

Bundle 'molokai'

Bundle 'mark'
"nunmap <silent> <unique> <leader>r
"vunmap <silent> <unique> <leader>r
"nmap <silent> <silent>R <plug>MarkRegex
"vmap <silent> <silent>R <plug>MarkRegex
"a.vim
Bundle 'a.vim'

Bundle 'ervandew/supertab'
Bundle 'Valloric/YouCompleteMe'
"YouCompleteMe
nnoremap <leader>yd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger = "<C-n>"
let g:UltiSnipsJumpBackwardTrigger = "<C-p>"
let g:UltiSnipsSnippetDirectories=["UltiSnips","/home/jzy/.vim/UltiSnips"]
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
Bundle 'rdnetto/YCM-Generator'
Bundle 'mattn/emmet-vim'
Bundle 'matchit.zip'

"bash-support
Bundle 'bash-support.vim'

""autocomplete
"Bundle 'Shougo/NeoComplCache.vim'
"	let g:neocomplcache_enable_at_startup = 1
"	let g:AutoComplPop_NotEnableAtStartup = 1
"	let g:NeoComplCache_EnableAtStartup = 1
"	let g:NeoComplCache_SmartCase = 1
"	let g:NeoComplCache_TagsAutoUpdate = 1
"	let g:NeoComplCache_EnableInfo = 1
"	let g:NeoComplCache_EnableCamelCaseCompletion = 1
"	let g:NeoComplCache_MinSyntaxLength = 3
"	let g:NeoComplCache_EnableSkipCompletion = 1
"	let g:NeoComplCache_SkipInputTime = '0.5'
"	let g:NeoComplCache_SnippetsDir = $VIMFILES.'/snippets'
"	"<TAB>: completion. NO USE with snipmate
"	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"	let g:neocomplcache_force_overwrite_completefunc = 1 "解决上面那个错误



"python
"Bundle 'davidhalter/jedi-vim'
	"let g:jedi#popup_on_select_first = 0
	"let g:jedi#popup_on_dot = 0
"Bundle 'kevinw/pyflakes-vim'
"Bundle 'pydoc'
"Bundle 'indent/python.vim'
"Bundle 'python.vim'
Bundle 'Raimondi/delimitMate'
" for python docstring ",优化输入
	au FileType python let b:delimitMate_nesting_quotes = ['"']

"markdown
"Bundle 'suan/vim-instant-markdown'
Bundle 'tpope/vim-markdown'
Bundle 'markdown'

Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'

"latex
Bundle 'vimlatex'

"Bundle 'fcitx.vim'

" original repos on github  
Bundle 'tpope/vim-fugitive'  
Bundle 'Lokaltog/vim-easymotion'  
"airline
Bundle 'bling/vim-airline'
	let g:airline_powerline_fonts = 1
	let g:airline#extensions#tabline#enabled = 1
	let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : '#H',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'x'    : '%a',
      \'y'    : '#W %R',
      \'z'    : '#H'}
	let g:airline_left_sep = '⮀'
	let g:airline_left_alt_sep = '⮁'
	let g:airline_right_sep = '⮂'
	let g:airline_right_alt_sep = '⮃'
	let g:airline_branch_prefix = '⭠'
	let g:airline_readonly_symbol = '⭤'
	let g:airline_linecolumn_prefix = '⭡'

Bundle 'steffanc/cscopemaps.vim'
Bundle 'quickfix-reflector.vim'
Bundle 'ronakg/quickr-cscope.vim'
	let g:quickr_cscope_keymaps = 0
	let g:quickr_cscope_use_qf_g = 1
	nmap <C-k>s <plug>(quickr_cscope_symbols)
	nmap <C-k>g <plug>(quickr_cscope_global)
	nmap <C-k>c <plug>(quickr_cscope_callers)
	nmap <C-k>f <plug>(quickr_cscope_files)
	nmap <C-k>i <plug>(quickr_cscope_includes)
	nmap <C-k>t <plug>(quickr_cscope_text)
	nmap <C-k>e <plug>(quickr_cscope_egrep)
	nmap <C-k>d <plug>(quickr_cscope_functions)

"Bundle 'cscope.vim'
"Bundle 'vim-scripts/cscope-quickfix'
""	nnoremap <C-]> :cscope find g <C-R>=expand('<cword>')<CR><CR>

Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
Bundle 'tpope/vim-rails.git'  
" vim-scripts repos  
Bundle 'L9'  
"Bundle 'FuzzyFinder'  
" non github repos  
"Bundle 'git://git.wincent.com/command-t.git'  
Bundle 'Yggdroot/LeaderF'
" ...  
Bundle 'godlygeek/tabular'
	" 以等号对其
	nmap t= :Tabularize /=<CR>
	vmap t= :Tabularize /=<CR>
	" 对其分号之后的部分
	nmap t: :Tabularize /:\zs<CR>
	vmap t: :Tabularize /:\zs<CR>
	" 对其逗号之后的部分
	nmap t, :Tabularize /,\zs<CR>
	vmap t, :Tabularize /,\zs<CR>
	" 对其分号之后的部分
	nmap t; :Tabularize /;\zs<CR>
	vmap t; :Tabularize /;\zs<CR>

Bundle 'nathanaelkane/vim-indent-guides'
    let g:indent_guides_auto_colors = 0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=5
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=13


Bundle 'KabbAmine/zeavim.vim'

Bundle 'python.vim'

Bundle 'bronson/vim-trailing-whitespace'

Bundle 'tpope/vim-obsession'

Bundle 'Chiel92/vim-autoformat'
	noremap <F3> :Autoformat<CR>
Bundle 'tidy'
Bundle 'einars/js-beautify'
""Bundle 'LustyExplorer'

Bundle 'kien/rainbow_parentheses.vim'
	let g:rbpt_colorpairs = [
		\ ['brown',       'RoyalBlue3'],
		\ ['Darkblue',    'SeaGreen3'],
		\ ['darkgray',    'DarkOrchid3'],
		\ ['darkgreen',   'firebrick3'],
		\ ['darkcyan',    'RoyalBlue3'],
		\ ['darkred',     'SeaGreen3'],
		\ ['darkmagenta', 'DarkOrchid3'],
		\ ['brown',       'firebrick3'],
		\ ['gray',        'RoyalBlue3'],
		\ ['black',       'SeaGreen3'],
		\ ['darkmagenta', 'DarkOrchid3'],
		\ ['Darkblue',    'firebrick3'],
		\ ['darkgreen',   'RoyalBlue3'],
		\ ['darkcyan',    'SeaGreen3'],
		\ ['darkred',     'DarkOrchid3'],
		\ ['red',         'firebrick3'],
		\ ]
	let g:rbpt_max = 40
	let g:rbpt_loadcmd_toggle = 0

filetype plugin indent on     " required!  
"  
" Brief help  
" :BundleList          - list configured bundles  
" :BundleInstall(!)    - install(update) bundles  
" :BundleSearch(!) foo - search(or refresh cache first) for foo  
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles  
"
" see :h vundle for more details or wiki for FAQ  
" NOTE: comments after Bundle command are not allowed..  
set tabstop=4
