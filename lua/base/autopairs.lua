-- autopairs の設定
local is_ok, autopairs = pcall(require, "nvim-autopairs")

autopairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
