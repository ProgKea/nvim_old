nnoremap <leader>ld :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>li :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>lsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>lr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>r :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>lh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>lc :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>ls :lua vim.diagnostics()<CR>
nnoremap <leader>lo :lua vim.diagnostic.open_float()<CR>
nnoremap <leader>ln :lua vim.diagnostic.goto_next()<CR>
nnoremap <leader>lp :lua vim.diagnostic.goto_prev()<CR>
nnoremap <leader>lf :Neoformat<CR>
