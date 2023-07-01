-- autopairs の設定
local status, autopairs = pcall(require, "nvim-autopairs")

autopairs.setup({
  disable_filetype = { "TelescopePrompt", "vim" },
})
