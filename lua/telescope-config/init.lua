require("telescope").setup{
    defaults = {
        prompt_prefix = "$ ",
        selection_caret = "> ",
        layout_strategy = 'center',
    }
}
require('telescope').load_extension('fzf')
vim.keymap.set('n', '<leader>en', '<cmd>Telescope find_files cwd=~/.config/nvim<Cr>', {})
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<Cr>', {})
vim.keymap.set('n', '<leader>ft', '<cmd>Telescope git_files<Cr>', {})
