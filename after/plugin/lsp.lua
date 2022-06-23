require'lspconfig'.clangd.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.texlab.setup{
    filetypes = {"tex", "bib", "markdown"}
}
require'lspconfig'.cssls.setup{}
require'lspconfig'.sumneko_lua.setup{}
require 'lspconfig'.tsserver.setup{}
require("lspconfig").rust_analyzer.setup{
	cmd = { "rustup", "run", "nightly", "rust-analyzer" }
}
