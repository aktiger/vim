set encoding=utf-8
set fencs=utf-8,gbk
set termencoding=utf-8
set fileencodings=utf-8,chinese,latin-1,cp936
set langmenu=zh_CN,utf-8
let $LANG="en_US.UTF-8"
let g:template_load = 1
let g:template_tags_replacing = 1
let g:T_AUTHOR = "uestczhangchao"
let g:T_AUTHOR_EMAIL = "uestczhangchao@hotmail.com"
let g:T_AUTHOR_WEBSITE = ""
let g:T_DATE_FORMAT = "%Y-%m-%d %H:%M:%S"
let g:DoxygenToolkit_authorName="zhangchao(uestczhangchao@hotmail.com)"
let s:licenseTag = "**************************************************************************\<enter>"
let s:licenseTag = s:licenseTag . "\<enter> Copyright(C) 2011 Baidu.com, Inc. "
let s:licenseTag = s:licenseTag . "All right reserved\<enter>\<enter>"
let s:licenseTag = s:licenseTag . "*************************************************************************"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
" taglist
" show all opened file but unfold only taglist of current file
let Tlist_Ctags_Cmd = '/home/zhangchao08/program_files/Exuberant/bin/ctags'
let Tlist_File_Fold_Auto_Close=1
" always show taglist of current file
let Tlist_Show_One_File=1
" automatically open tlist whenever open vim;
let Tlist_Auto_Open=1
" exit when taglist is last opened window
let Tlist_Exit_OnlyWindow=1
" always parsing file
let Tlist_Process_File_Always=1
" automatically highlight the current tag
let Tlist_Auto_Highlight_Tag=1
" show tag in status line
set statusline=%<%f%=%([%{Tlist_Get_Tagname_By_Line()}]%)
" show tag in title
set title titlestring=%<%f\ %([%{Tlist_Get_Tagname_By_Line()}]%)
"<Leader>Ĭ����\
" set leader + z to open a taglist 
"nnoremap <leader>z :TlistToggle<CR>
"��pwd���óɵ�ǰ�༭���ļ����ڵ�Ŀ¼����ݼ���\cd
cs add ./cscope.out
cs add /home/zhangchao08/CVS/cscope.out
cs add /home/zhangchao08/kernel/cscope.out
cs add /home/zhangchao08/opensource/protobuf-2.4.1/cscope.out
map <leader>cd :cd %:p:h<CR>
nnoremap <silent><F9>  :TlistToggle<CR>
"nnoremap <silent> <F8> :Tlist<CR>
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40
"
"map <C-J> <C-W>j<C-W>_
" Acumon special
"set tag=./tags,tags,~/.vim/cpptags,~/CVS/tags
set tag=./tags,tags,~/CVS/tags
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/bsl
"set tags+=~/.vim/tags/bslext
"set tags+=~/.vim/tags/dict
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/mcpack
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/uconv
"set tags+=~/.vim/tags/ullib
set tags+=~/.vim/tags/boost
set tags+=~/CVS/tags
set tags+=/home/zhangchao08/kernel/tags
"map <F12> :!ctags --sort=yes -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"map <F12> :!ctags -R --fields=+iaS --extra=+q .<CR>
map <F12> :!/home/zhangchao08/program_files/Exuberant/bin/ctags --sort=yes -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nmap <F2> :NERDTreeToggle<CR>
:set csprg=/home/zhangchao08/program_files/cscope/bin/cscope 

"-------------------------------------------------------------------------------
" plugin - mru.vim (most recently used files) 
"------------------------------------------------------------------------------ 
"The default setting for this variable is 
"$HOME/.vim_mru_files for Unix-like systems 
"which file to save mru entries 

"let MRU_File='~/_vim_mrc_file'
"max mru entries in _vim_mru_files 
"let MRU_Max_Entries = 30

"to let the MRU window to use the current window
"let MRU_Use_Current_Window = 0 
"let MRU_Window_Height = 10

"close the MRU window when open one mru file, 0 will not close the window,the
"default will close the window
"let MRU_Auto_Close = 1 

"let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*\|tags\|*.o\|*.out' 
"let MRU_Include_Files = '\.c$\|\.h$' 

"let mru file open in new table
"let MRU_Open_File_Use_Tabs = 1
"map <C-m> :MRU<CR>
"map <leader>f :MRU<CR>
" The ':vimgrep' command adds all the files searched to the buffer list.
" " This also modifies the MRU list, even though the user didn't edit the
" " files. Use the following autocmds to prevent this.
"autocmd QuickFixCmdPre *vimgrep* let s:mru_list_locked = 1 
"autocmd QuickFixCmdPost *vimgrep* let s:mru_list_locked = 1 
"let s:mru_list_locked = 1


augroup filetype
au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
"set tags+=~/.vim/stltags
"
"set foldmethod=indent
" �����ַ����롣�ο���http://www.rainux.org/blog/index.php/2005/10/20/106
"
" encoding: Vim �ڲ�ʹ�õ��ַ����뷽ʽ������ Vim �� buffer (������)���˵���
" ������Ϣ�ı��ȡ��û��ֲ��Ͻ���ֻ�� .vimrc �иı�����ֵ����ʵ���ƺ�Ҳֻ��
" �� .vimrc �иı�����ֵ�������塣
"
" ���� Unicode �ܹ������������е����Ե��ַ������� Unicode �� UTF-8 ���뷽ʽ
" ���Ƿǳ������Լ۱ȵı��뷽ʽ (�ռ����ı� UCS-2 С)����˽��� encoding ��
" ֵ����Ϊ utf-8����ô������һ�������� encoding ����Ϊ utf-8 ʱ��Vim �Զ�̽
" ���ļ��ı��뷽ʽ���׼ȷ (����������ɲ�����Ҫ��)��
set encoding=utf-8
set fileencodings=utf-8,euc-cn",cs-bom,utf-8
" fileencodings: Vim ����ʱ�ᰴ�������г����ַ����뷽ʽ��һ̽�⼴���򿪵���
" �����ַ����뷽ʽ�����ҽ� fileencoding ����Ϊ����̽�⵽���ַ����뷽ʽ����
" ����ý� Unicode ���뷽ʽ�ŵ�����б����ǰ�档
"
" ������ϵ���뷽ʽ latin1 ���ȥ������Ϊ����� latin-1�����ļ����ж��ֱ���
" ��ʽ������ʱ (���磬a Ϊ utf-8 ����������ı��ļ���b Ϊ cp936 ���������
" �ı��ļ���ִ������ cat b >> a ��� a �ļ�)����� Vim �Ὣ�ļ�������Ϊ
" latin-1���������շ�Ӣ��������ʾ��ȫ���롣
"set fileencodings=utf-8,chinese,latin-1
"set fileencoding=chinese
" fileencoding: Vim �е�ǰ�༭���ļ����ַ����뷽ʽ��Vim �����ļ�ʱҲ�Ὣ��
" ������Ϊ�����ַ����뷽ʽ��
"
" ����򿪵������е��ļ����� Vim �Ὣ fileencoding ����Ϊ����̽�⵽���ַ���
" �룬�˴������ò�����Ч����������ļ�����˴��� fileencoding ��Ч��
"if has("win32")
" ���������� Windows ��༭���ļ���Ϊ�˼������������ļ����ԣ��ļ�����
" ��������Ϊ GB2312/GBK �ȽϺ��ʣ���� fileencoding ��������Ϊ chinese
" (chinese �Ǹ��������� Unix ���ʾ gb2312���� Windows ���ʾ cp936��Ҳ
" ���� GBK �Ĵ���ҳ)��
"set fileencoding=chinese
"else
set fileencoding=utf-8
"set fileencoding=chinese
"endif
" termencoding: Vim ���������ն� (���� Windows �� Console ����) ���ַ�����
" ��ʽ�����ѡ��� GUI ģʽ�� gVim ��Ч������ Console ģʽ�� Vim ���Ծ���
" Windows ����̨�Ĵ���ҳ (���� Windows ����)������ͨ�����ǲ���Ҫ�ı�����
"
" �������ֻӰ����ͨģʽ (��ͼ�ν���) �µ� Vim��
set termencoding=utf-8
" һ����ԣ����ַ�����������ȷ������£��ǲ��������������ġ�
" ��һ���Ҳ˵����� (���磬locale ����Ϊ zh_CN.UTF-8 �� encoding ȴ����Ϊ
" cp936 ʱ����Ȼ����ʱ��õķ������ǽ� encoding ����Ϊ utf-8) ����ȡ����
" ����������ע�͡�
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ����ͼ�ν��档
"
" ���岿�֣��ɲο�������Ա��ϲ���õı�����塷һ�ģ�
" http://www.2maomao.com/blog/best-programmer-fonts/
if has("gui_running")
if has("win32")
" �趨 windows �� gvim ����ʱ���
autocmd GUIEnter * simalt ~x
" �趨 windows ��ͼ�ν����µ����塣��������Ҫ�Լ����ذ�װ�����ص�ַ��
"http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/1.10/ttf-bitstream-vera-1.10.zip
set guifont=Bitstream_Vera_Sans_Mono:h14:cANSI
else
" �趨 linux ��ͼ�ν����µ����壬������ Fedora 7 �Դ�
" set guifont=DejaVu\ LGC\ Sans\ Mono\ 14
set guifont=Bitstream_Vera_Sans_Mono:h14:cANSI
endif
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
colorscheme desert "or koehler
else
colorscheme evening
endif
"evening         " �趨����Ϊҹ��ģʽ
filetype plugin on          " �Զ�ʶ���ļ����ͣ��Զ�ƥ���Ӧ��
" ���ļ�����Plugin.vim���ļ���ʹ�����������ļ�
set ambiwidth=double        " ambiwidth Ĭ��ֵΪ single������ֵΪ singleʱ��
" �� encoding Ϊ utf-8��gvim ��ʾȫ�Ƿ���ʱ�ͻ�
" �����⣬�ᵱ�������ʾ��
"set autochdir               " �Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
set autoindent cindent cinoptions=g0
" ���Զ������� C ���Է�������ģʽ��
" ���� C �����������
set backspace=indent,eol,start
" ���趨�Ļ��ڲ���״̬�޷����˸���� Delete
" ��ɾ���س���
set backupcopy=yes          " ���ñ���ʱ����ΪΪ����
if v:version >= 700
set completeopt=menu,longest,preview
" �Զ���ȫ(ctrl-p)ʱ��һЩѡ�
" ����һ��ʱ��ʾ�˵����ѡ��
" ��ʾ��ǰѡ��Ķ�����Ϣ
endif
set confirm                 " ��ȷ�϶Ի��򣨶��� gvim����������ѡ�����
" vim����������δ��������ʱ�ľ�����Ϣ
set display=lastline        " ���в�����ȫ��ʾʱ��ʾ��ǰ��Ļ����ʾ�Ĳ��֡�
" Ĭ��ֵΪ�գ����в�����ȫ��ʾʱ��ʾ @��
set expandtab               " �� tab ��ת��Ϊ�ո�
set formatoptions=tcqro     " ʹ��ע�ͻ���ʱ�Զ�����ǰ���Ŀո���Ǻ�
set hidden                  " ��������δ������޸�ʱ�л���������
" ��ʱ���޸����л��� vim ���𱣴�
set history=50              " ����ð����������������������ʷ�б�ĳ���Ϊ50
set hlsearch                " ����ʱ������ʾ���ҵ����ı�
set ignorecase smartcase    " ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ
" �Ա��ֶԴ�Сд����
set incsearch               " ������������ʱ����ʾ�������
"set mouse=a                 " �趨���κ�ģʽ����궼����
set mouse=v                 " �趨���κ�ģʽ����궼����
set nobackup                " �����ļ�ʱ������
set nocompatible            " �趨 gvim ��������ǿģʽ��
set noignorecase            " Ĭ�����ִ�Сд
set nolinebreak             " �ڵ����м����
set number                  " ��ʾ�к�
set ruler                   " ��״̬�����
set scrolloff=5             " �趨����봰�����±߽� 5 ��ʱ�����Զ�����
set shiftwidth=4            " �趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4
set showcmd                 " ��״̬����ʾĿǰ��ִ�е�ָ�δ��ɵ�ָ��Ƭ����
" ����ʾ����
set softtabstop=4           " ʹ�ð��˸��ʱ����һ��ɾ�� 4 ���ո�
" ������ 4 ��ʱɾ������ʣ�µĿո�
set tabstop=4               " �趨 tab ����Ϊ 4
set whichwrap=b,s,<,>,[,]   " �趨�˸�����ո���Լ����ҷ������������βʱ��
" ��Ϊ����Ӱ�� h �� l ��
set wrap                  " �Զ�������ʾ
syntax enable               "
syntax on                   " �Զ��﷨����
map <F3>a :DoxAuthor
map <F3>f :Dox
map <F3>b :DoxBlock
map <F3>c O/** */<Left><Left>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ���������к�״̬��
set cmdheight=1            " �趨�����е�����Ϊ 1
set laststatus=2            " ��ʾ״̬�� (Ĭ��ֵΪ 1, �޷���ʾ״̬��)
set statusline=%F%m%r\ \|\ %Y,%{&fileencoding}\ \|%=\ %l/%L,%c\ \|\ %f
" ������״̬����ʾ����Ϣ���£�
" %f    ��ǰ���ļ���
" %F    ��ǰȫ·���ļ���
" %m    ��ǰ�ļ��޸�״̬
" %r    ��ǰ�ļ��Ƿ�ֻ��
" %Y    ��ǰ�ļ�����
" %{&fileformat}
"       ��ǰ�ļ�����
" %{&fileencoding}
"       ���ı���
" %b    ��ǰ��괦�ַ��� ASCII ��ֵ
" %B    ��ǰ��괦�ַ���ʮ������ֵ
" %l    ��ǰ����к�
" %c    ��ǰ����к�
" %V    ��ǰ��������к� (�����ַ���ռ�ֽ�������)
" %p    ��ǰ��ռ�������İٷֱ�
" %%    �ٷֺ�
" %L    ��ǰ�ļ�������
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �Զ�����
" ���ļ�ʱ�Զ��趨��ǰĿ¼Ϊ�ն����ļ����ڵ�Ŀ¼
autocmd BufReadPost * cd %:p:h
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"���ñ�ǩ�����������Ĭ��ֵ��10
set tabpagemax=18
"������ʾ��ǩ��
set showtabline=2
"�����vim�д�һ���ļ�֮���Զ���NERDTREE!
"autocmd BufRead *  25vsp  ./
