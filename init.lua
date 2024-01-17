if vim.g.vscode then
  vim.api.nvim_set_option('clipboard', 'unnamedplus')
  vim.api.nvim_set_keymap('n', 'rf', ':ReplaceFromCursor ', { noremap = true })
  vim.api.nvim_set_keymap('n', 'ri', ':ReplaceInFile ', { noremap = true })
  vim.api.nvim_set_keymap('n', 'di', 'di"', { noremap = true })
  vim.api.nvim_set_keymap('n', 'di', 'di{', { noremap = true })
  vim.api.nvim_set_keymap('n', 'di', 'di[', { noremap = true })
  vim.api.nvim_set_keymap('i', 'kk', '<ESC>la', {})
  vim.api.nvim_set_keymap('n', 'vu', '<C-w>w', {})
end

-- 使用するプラグインをまとめた lua ファイル
require("usePlugin")

-- 各エントリーポイントから lua ファイルを import
require("plugins.entryPoint")

-- neovim の言語設定
vim.cmd('language en_US.UTF-8')
vim.cmd('language messages en_US.UTF-8')
vim.cmd("command! -nargs=1 ReplaceFromCursor lua require('plugins.replaceFunction').replace_from_cursor(<q-args>)")
vim.cmd("command! -nargs=1 ReplaceInFile lua require('plugins.replaceFunction').replace_in_file(<q-args>)")
