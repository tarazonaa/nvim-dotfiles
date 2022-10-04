local o = vim.o
local map = vim.api.nvim_set_keymap

o.tex_flavor = 'latex'
o.tex_conceal = 'abdmg'
o.vimtex_view_method = 'zathura'
o.vimtex_quickfix_mode = 0


map('n', '<leader>lc', ':VimtexCompile<CR>', {noremap = true})
map('n', '<leader>lv', ':VimtexView<CR>', {noremap = true})
