local packer = require('packer')
local g = vim.g

packer.startup({
  function(use)
    use 'ful1e5/onedark.nvim'
    use 'wbthomason/packer.nvim'
    use 'tjdevries/colorbuddy.nvim'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'kyazdani42/nvim-web-devicons'
    use 'akinsho/nvim-bufferline.lua'
    use 'dinhhuy258/git.nvim'
    use 'nvim-lua/plenary.nvim'
    use({ 'rcarriga/nvim-notify' })
    use "williamboman/mason.nvim"
    use "github/copilot.vim"
  end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end,
    },
  }
})
