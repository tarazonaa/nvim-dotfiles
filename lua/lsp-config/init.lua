local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        vim.keymap.set("n", "gd", vim.lsp.buf.type_definition, {buffer = 0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
        vim.keymap.set("n", "<leader>gj", vim.diagnostic.goto_next, {buffer = 0})
        vim.keymap.set("n", "<leader>gk", vim.diagnostic.goto_prev, {buffer = 0})
        vim.keymap.set("n", "<leader>gl", '<cmd>Telescope diagnostics<cr>', {buffer = 0})
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
local sumneko_binary_path = vim.fn.exepath('lua-language-server')
local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ':h:h:h')

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
    capabilities = capabilities,
    cmd = {sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua"};
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = runtime_path,
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            format = {
                enable = true,
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
    on_attach = on_attach,
}
-- Rust
require('lspconfig')['rls'].setup{
    on_attach = on_attach,
    capabilities = capabilities,
}
