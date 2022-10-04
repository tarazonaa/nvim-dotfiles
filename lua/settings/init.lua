local set = vim.opt
local map = vim.keymap.set

set.expandtab = true
set.smarttab = true
set.smartindent = true
set.shiftwidth = 4
set.mouse = 'a'
set.tabstop = 4
set.softtabstop = 4

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.termguicolors = true

set.splitbelow = true
set.splitright = true
set.scrolloff = 15
set.fileencoding = 'utf-8'

set.relativenumber = true
set.number = true
set.cursorline = true

set.hidden = true

vim.g.astro_typescript = 'enable'
vim.g.astro_stylus = 'enable'

vim.g.mapleader = ' '

map('n', '<leader>t', '<cmd>:NvimTreeToggle<CR>', {})

require('autoclose')
-- Luasnip
map('n', '<S-Tab>', '<cmd>lua require("luasnip").jump(-1)<Cr>', {})
map('n', '<Tab>', '<cmd>lua require("luasnip").jump(1)<Cr>', {})
map('n', '<C-h>', '<cmd>nohl<Cr>', {})

-- Feline
require("feline").setup()

-- Transparent BG
require('transparent').setup {
    enable = true,
}

-- Snippet init
vim.g.snippets = 'luasnip'

map('n', '<leader>pv', '<cmd>:Vex<CR>', {})
map('n', '<leader>fr', '<cmd>:lua vim.lsp.buf.format()<CR>', {})

