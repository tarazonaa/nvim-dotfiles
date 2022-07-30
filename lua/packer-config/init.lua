return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'max-0406/autoclose.nvim'
    -- Personal plugin
    use '~/plugins/stackmap.nvim'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-treesitter/nvim-treesitter'
    use 'numToStr/Comment.nvim'
    use "EdenEast/nightfox.nvim"
    use "simrat39/rust-tools.nvim"
    -- Copilot
    use "github/copilot.vim"
    -- Telescope stuff
    use 'nvim-telescope/telescope.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    -- Lsp Config
    use 'neovim/nvim-lspconfig'
    -- Cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lua'
    -- Luasnip and stuff
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    -- Tools
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    }
    use "nanozuki/tabby.nvim"
    use "feline-nvim/feline.nvim"
end)
