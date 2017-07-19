"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）
nnoremap <leader>1 :set filetype=xhtml<cr>
nnoremap <leader>2 :set filetype=css<cr>
nnoremap <leader>3 :set filetype=javascript<cr>
nnoremap <leader>4 :set filetype=php<cr>

"光标后面输入日期
map <leader>dt a<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

" 切换自动换行
map <silent><leader>wp <esc>:set wrap!<cr>

" 全选
map <leader>gg <ESC>ggVG
nmap <silent> <leader>w :w!<CR>
nmap <silent> <leader>x :x!<CR>
nmap <silent> <leader>q :q!<CR>
nmap <silent> <leader>qa :qall!<CR>
nmap <silent> <leader>be :BufExplorer<CR>
nmap <silent> <leader>nt :NERDTreeToggle<cr>
nmap <silent> <leader>tt :TlistToggle<cr>
nmap <silent> <leader>hs :GundoToggle<cr>
nmap <silent> <leader>ms :marks<CR>
nmap <silent> <leader>fv :FencView<CR>

map f <Plug>(easymotion-prefix)
map ff <Plug>(easymotion-s)
map fs <Plug>(easymotion-f)
map fl <Plug>(easymotion-lineforward)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fh <Plug>(easymotion-linebackward)
let g:EasyMotion_smartcase = 1

" map bn & bp
noremap <M-Right> :bn<CR>
noremap <M-Left> :bp<CR>
nmap <S-L> :bnext<CR>
nmap <S-H> :bprevious<CR>

" Alt-W切换自动换行
noremap <a-w> :exe &wrap==1 ? 'set nowrap' : 'set wrap'<cr>

" 选中状态下 Ctrl+c 复制
vnoremap <c-c> "+y

map <c-u> :Ack<space>