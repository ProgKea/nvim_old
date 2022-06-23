nnoremap <S-C-p> "0p

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Select all
nmap <C-a> gg<S-v>G

" Save with root permission
command! W w !sudo tee > /dev/null %

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

map <leader>c :w<CR>:!compiler %:p<CR>
map <leader>m :w<CR>:!make<CR>
map <leader>i :w<CR>:!compiler %:p && ./%< < input<CR>
map <C-c> :w<CR>:!compiler %:p<CR><CR>:!./%<<CR>

nnoremap Y y$
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>x :silent !chmod +x %<CR>

"nmap <leader>gh :diffget //3<CR>
"nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gpp :G push<CR>
nmap <leader>gpl :G pull<CR>
nmap <leader>gc :G commit<CR>
nnoremap <leader>u :UndotreeShow<CR>

" move lines
"vnoremap J :m '>+1<CR>gv=gv
"vnoremap K :m '<-2<CR>gv=gv

" Telescope bindings

nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>f :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <Leader>pb :Telescope buffers<CR>
nnoremap <Leader>vh :Telescope help_tags<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

"nnoremap <leader>gc :lua require('telescope').git_branches()<CR>
"nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
"nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>

" netrw

nnoremap <leader>pv :Ex<CR>
