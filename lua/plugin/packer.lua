vim.cmd.packadd("packer.nvim")
return require('packer').startup( function(use) 
    -- 状态栏美化
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        's1n7ax/nvim-terminal',
        config = function()
            vim.o.hidden = true
            require('nvim-terminal').setup()
        end,
    }
    use 'wbthomason/packer.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
    use {
        'nvim-tree/nvim-tree.lua',
    }
    -- rust-tools
    -- Adds extra functionality over rust analyzer
    use("simrat39/rust-tools.nvim")
    use "nvim-tree/nvim-web-devicons"
end )
