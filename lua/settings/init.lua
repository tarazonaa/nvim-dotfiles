local set = vim.opt
local map = vim.keymap.set

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4

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

vim.g.mapleader = ','

map('n', '<leader>t', '<cmd>:NvimTreeToggle<CR>', {})

require('autoclose')
