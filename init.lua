require 'lspconfig'.lua_ls.setup {
  cmd = { "/Users/kojimagai/lua-language-server/bin/lua-language-server", "-E",
    "/Users/kojimagai/lua-language-server/main.lua" },
}
require('lspconfig').tailwindcss.setup {
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  root_dir = require('lspconfig/util').root_pattern("tailwind.config.js", "postcss.config.js", ".postcssrc"),
}
require('plugins')

-- 使用するプラグインをまとめた lua ファイル
require("usePlugin")

-- 各エントリーポイントから lua ファイルを import
require("base.baseEntoryPoint")
require("plugin.PluginsEntoryPoint")

-- Gitマーカーの設定
require('gitsigns').setup {}
