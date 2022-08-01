local cmp = require'cmp'
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
local ok, lspkind = pcall(require, 'lspkind')
if not ok then 
    return 
end

lspkind.init()


cmp.setup({
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources(
        {
            {name = 'nvim_lsp'},
            {name = 'nvim_lua'},
            {name = 'luasnip'},
        },
        {
            {name = 'buffer'}
        }
    ),
    formatting = {
    -- Youtube: How to set up nice formatting for your sources.
        format = lspkind.cmp_format {
          with_text = true,
          menu = {
            buffer = "[buf]",
            nvim_lsp = "[LSP]",
            nvim_lua = "[api]",
            path = "[path]",
            luasnip = "[snip]",
            gh_issues = "[issues]",
            tn = "[TabNine]",
          },
        },
    },
    native_menu = false,
    experimental = {
    },
    snippet = {
      expand = function(args)
       require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
})
