vim.g.vsnip_filetypes = {
  javascript = { 'javascript', 'html' },
  javascriptreact = { 'javascriptreact', 'javascript', 'html' },
  typescript = { 'typescript', 'html' },
  typescriptreact = { 'typescriptreact', 'typescript', 'html' },
}

require 'lspconfig'.lua_ls.setup {
  cmd = { "/Users/kojimagai/lua-language-server/bin/lua-language-server", "-E",
    "/Users/kojimagai/lua-language-server/main.lua" },
}

require('lspconfig').tailwindcss.setup {
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact", "pug" },
  root_dir = require('lspconfig/util').root_pattern("tailwind.config.js", "postcss.config.js", ".postcssrc"),
}

-- 使用するプラグインをまとめた lua ファイル
require("usePlugin")

-- 各エントリーポイントから lua ファイルを import
require("base.baseEntoryPoint")
require("plugin.PluginsEntoryPoint")

-- Gitマーカーの設定
require('gitsigns').setup {}

-- neovim の言語設定
vim.cmd('language en_US.UTF-8')
vim.cmd('language messages en_US.UTF-8')
vim.cmd("command! -nargs=1 ReplaceFromCursor lua require('base.replaceFunction').replace_from_cursor(<q-args>)")
vim.cmd("command! -nargs=1 ReplaceInFile lua require('base.replaceFunction').replace_in_file(<q-args>)")