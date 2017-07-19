"UltiSnips
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"template
let g:email = "josephzeng36@gmail.com"
let g:user = "josephzeng"
let g:templates_directory = '~/.vim/templates'

"AuthorInfo
let g:vimrc_author='josephzeng'
let g:vimrc_email='josephzeng36@gmail.com'
let g:vimrc_homepage='http://josephzeng36.github.io'

"nerdtree
let NERDChristmasTree=1
let NERDTreeCaseSensitiveSort=1
let NERDTreeChDirMode=2
let NERDTreeHijackNetrw=1
let NERDTreeWinPos="right"
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let NERDTreeShowBookmarks=2
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeChDirMode = 2
let g:ctrlp_working_path_mode = 'rw'

"NERD_commenter
let NERDShutUp=1

"bufexplorer
let g:bufExplorerSortBy='mru'
let g:bufExplorerSplitRight=0
let g:bufExplorerSplitVertical=1
let g:bufExplorerSplitVertSize = 30
let g:bufExplorerUseCurrentWindow=1

"tag list
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=40        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口


"ctrlp
noremap <C-W><C-U> :CtrlPMRU<CR>
nnoremap <C-W>u :CtrlPMRU<CR>
nnoremap <C-W>s :CtrlP<CR>

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

syntax enable
set background=dark
colorscheme solarized

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
let g:vim_markdown_folding_disabled = 1


"字典补全
autocmd! FileType * exec "set dict+=$VIMFILES/dict/".&ft.".dict"


"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=1

" YouCompleteMe
" let g:ycm_key_list_select_completion=['<c-n>']
" let g:ycm_key_list_select_completion = ['<Down>']
" let g:ycm_key_list_previous_completion=['<c-p>']
" let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0      " 关闭加载.ycm_extra_conf.py提示
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_tags_files=1                 " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
let g:ycm_seed_identifiers_with_syntax=1   "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion=2                     " 从第2个键入字符就开始罗列匹配项
" 引入，可以补全系统，以及python的第三方包 针对新老版本YCM做了兼容
" old version
if !empty(glob("~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"))
    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
endif
" new version
if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
endif

"mapping
nmap <leader>gd :YcmDiags<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>           " 跳转到申明处
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>            " 跳转到定义处
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ackprg = 'ag --nogroup --nocolor --column'

"let vim_markdown_preview_hotkey='<C-m>'
"let vim_markdown_preview_perl=1
"let vim_markdown_preview_toggle=1
"let vim_markdown_preview_temp_file=1