local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        vim.keymap.set("n", "gd", vim.lsp.buf.type_definition, {buffer = 0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
        vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer = 0})
        vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer = 0})
        vim.keymap.set("n", "<leader>dl", '<cmd>Telescope diagnostics<cr>', {buffer = 0})
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer = 0})
    end,

-- C++
require('lspconfig')['clangd'].setup{
    on_attach = on_attach,
    capabilities = capabilities,
}
-- Typescript
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    capabilities = capabilities,
}
-- Javascript
require('lspconfig')['eslint'].setup{
    on_attach = on_attach,
    capabilities = capabilities,
}
-- Lua
require('lspconfig')['sumneko_lua'].setup{
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {version = 'LuaJIT'}
        },
        diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
          },
        workspace = {
            library = vim.api.nvim_get_runtime_file('', true),
        }
    }
}
-- Rust
require('lspconfig')['rls'].setup{
    on_attach = on_attach,
    capabilities = capabilities,
}
