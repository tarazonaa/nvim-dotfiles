local has_rust_tools, rust_tools = pcall(require, 'rust_tools')


if not has_rust_tools then
else
    local lsp = require'lspconfig'
    rust_tools.setup {
        tools = {
            autoSetHints = true,

            hover_with_actions = true,

            runnables = {
                use_telescope = true,
            },

            hover_actions = {
            -- the border that is used for the hover window
            -- see vim.api.nvim_open_win()
            border = {
              { "╭", "FloatBorder" },
              { "─", "FloatBorder" },
              { "╮", "FloatBorder" },
              { "│", "FloatBorder" },
              { "╯", "FloatBorder" },
              { "─", "FloatBorder" },
              { "╰", "FloatBorder" },
              { "│", "FloatBorder" },
            },

            -- whether the hover action window gets automatically focused
            auto_focus = false,
          },
            
        },
        server = {
            capabilities = lsp.capabilities,
            on_attach = lsp.on_attach,
            settings = {
                ["rust-analyzer"] = {
                  assist = {
                    importGranularity = "module",
                    importPrefix = "by_self",
                  },
                  cargo = {
                    loadOutDirsFromCheck = true,
                  },
                  procMacro = {
                    enable = true,
              },
            },
        },

    }

end
