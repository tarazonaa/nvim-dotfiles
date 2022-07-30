local action_state = require("telescope.actions.state") -- File telescope/actions/state inside lua folders
require("telescope").setup{
    defaults = {
        prompt_prefix = "$ ",
        selection_caret = "> ",
        layout_strategy = 'center',
        mappings = {
            i = {
                ["<c-a>"] = function()
                    print(vim.inspect(action_state.get_selected_entry()))
                end
            }
        }
    }
}
require('telescope').load_extension('fzf')
vim.keymap.set('n', '<leader>en', '<cmd>Telescope find_files cwd=~/.config/nvim<Cr>', {})
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<Cr>', {})
vim.keymap.set('n', '<leader>fc', '<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending<Cr>', {})
vim.keymap.set('n', '<leader>ft', '<cmd>Telescope git_files<Cr>', {})

