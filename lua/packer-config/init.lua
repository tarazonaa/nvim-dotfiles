return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'max-0406/autoclose.nvim'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-treesitter/nvim-treesitter'
    use "EdenEast/nightfox.nvim"
    use "simrat39/rust-tools.nvim"
    use "github/copilot.vim"
    use 'nvim-telescope/telescope.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-lint'
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
        config = function()
            local saga = require("lspsaga")

            saga.init_lsp_saga({
                -- your configuration
            })
        end,
    })
    use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    }
    use "nanozuki/tabby.nvim"
    use "feline-nvim/feline.nvim"
end)
