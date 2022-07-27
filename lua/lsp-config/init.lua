require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags
}
require('lspconfig')['clangd'].setup{
    on_attach = on_attach,
    flags = lsp_flags
}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags
}
require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags
}
