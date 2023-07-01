local packer = require('packer')
local g = vim.g

packer.startup({
  function()
    use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use { 'prettier/vim-prettier', run = 'npm install' }
    use 'svrana/neosolarized.nvim'
    use 'tjdevries/colorbuddy.nvim'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'L3MON4D3/LuaSnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    use 'kyazdani42/nvim-web-devicons'
    use 'windwp/nvim-ts-autotag'
    use 'windwp/nvim-autopairs'
    use 'akinsho/nvim-bufferline.lua'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'dinhhuy258/git.nvim'
    use 'glepnir/lspsaga.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use {
      'hrsh7th/vim-vsnip',
      requires = {
        'hrsh7th/vim-vsnip-integ',
      },
      config = function()
        require('plugin.vsnip')
      end
    }
    use {
      "williamboman/mason.nvim",
      run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }
    use 'digitaltoad/vim-pug'
    use 'dense-analysis/ale'
    use 'nvim-lua/plenary.nvim'
  end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end,
    },
  }
})
