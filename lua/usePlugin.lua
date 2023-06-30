require('packer').startup({
  function()
    use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use { 'prettier/vim-prettier', run = 'npm install' }
    use 'svrana/neosolarized.nvim'
    use 'tjdevries/colorbuddy.nvim'
    use 'nvim-lualine/lualine.nvim'
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
    use 'nvim-lua/plenary.nvim'
    use { 'hrsh7th/vim-vsnip',
      config = function()
        local function map(mode, lhs, rhs, opts)
          local options = { noremap = true }
          if opts then options = vim.tbl_extend('force', options, opts) end
          vim.api.nvim_set_keymap(mode, lhs, rhs, options)
        end

        map('i', '<C-j>', "vsnip#available(1)  ? '<Plug>(vsnip-expand)' : '<C-j>'", { expr = true })
        map('s', '<C-j>', "vsnip#available(1)  ? '<Plug>(vsnip-expand)' : '<C-j>'", { expr = true })

        map('i', '<C-l>', "vsnip#expandable()  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'", { expr = true })
        map('s', '<C-l>', "vsnip#expandable()  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'", { expr = true })

        map('i', '<Tab>', "vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)' : '<Tab>'", { expr = true })
        map('s', '<Tab>', "vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)' : '<Tab>'", { expr = true })

        map('i', '<S-Tab>', "vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'", { expr = true })
        map('s', '<S-Tab>', "vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'", { expr = true })
      end
    }
    use 'hrsh7th/vim-vsnip-integ'
    use {
      "williamboman/mason.nvim",
      run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }
  end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end,
    },
  }
})
