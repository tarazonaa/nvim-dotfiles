local set = vim.opt
local map = vim.keymap.set

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.mouse = 'a'

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true

set.relativenumber = true
set.cursorline = true

set.hidden = true

vim.g.mapleader = ' '

map('n', '<leader>t', '<cmd>:NvimTreeToggle<CR>', {})

require('autoclose')
-- Luasnip
map('n', '<S-Tab>', '<cmd>lua require("luasnip").jump(-1)<Cr>', {})
map('n', '<Tab>', '<cmd>lua require("luasnip").jump(1)<Cr>', {})
-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {})
require('luasnip.loaders.from_vscode').lazy_load()
