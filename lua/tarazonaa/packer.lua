-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd.packadd('packer.nvim')


return require('packer').startup(function(use)
    use 'nvim-tree/nvim-web-devicons'

    -- Rust Tools
    use 'simrat39/rust-tools.nvim'

    -- Prettier
    use 'prettier/vim-prettier'

    -- Lualine
    use 'nvim-lualine/lualine.nvim'

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Surround nvim
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    })

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }



    use {'nyoom-engineering/oxocarbon.nvim'}
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine-moon')
        end
    })

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use("folke/zen-mode.nvim")

    -- COpilot
    use {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({})
        end,
    }

    use {
        'MrcJkb/haskell-tools.nvim',
    }
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })
    use 'godlygeek/tabular'
    use 'preservim/vim-markdown'
end)
