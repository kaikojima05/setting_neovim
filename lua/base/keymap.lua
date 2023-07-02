-- ターミナルが256色設定できるようにする
vim.opt.termguicolors = true

-- バックアップに関する設定
vim.opt.backup = false
vim.opt.swapfile = false

-- encoding
vim.opt.encoding = "utf-8"
vim.scriptencoding = "utf-8"

-- インデントの設定
vim.opt.list = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- 行番号
vim.opt.number = true
vim.opt.backspace = "indent,eol,start"

-- ヤンクするとクリップボードに保存される
vim.cmd('set clipboard+=unnamedplus')
vim.opt.clipboard:append("unnamedplus")

-- ノーマルモードの設定
vim.api.nvim_set_keymap('n', '<Space>h', '^', {})
vim.api.nvim_set_keymap('n', '<Space>l', '$', {})
vim.api.nvim_set_keymap('n', 'dh', 'd0', {})
vim.api.nvim_set_keymap('n', 'dl', 'd$', {})
vim.api.nvim_set_keymap('n', 'nd', ':Explore<CR>', {})
vim.api.nvim_set_keymap('n', 'ns', ':vsp<CR>', {})
vim.api.nvim_set_keymap('n', 'vsl', '<C-w>l', {})
vim.api.nvim_set_keymap('n', 'vsh', '<C-w>h', {})
vim.api.nvim_set_keymap('n', ';d', '"_d', {})
vim.api.nvim_set_keymap('n', ';dd', '"_dd', {})
vim.api.nvim_set_keymap('n', ';dw', '"_dw', {})
vim.api.nvim_set_keymap('n', ';dl', '"_dl', {})
vim.api.nvim_set_keymap('n', 'le', 'b', {})
vim.api.nvim_set_keymap('n', ':rf', ':ReplaceFromCursor ', { noremap = true })
vim.api.nvim_set_keymap('n', ':ri', ':ReplaceInFile ', { noremap = true })

-- インサートモードの設定
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { silent = true })
vim.api.nvim_set_keymap('i', '{', '{}<LEFT>', {})
vim.api.nvim_set_keymap('i', '[', '[]<LEFT>', {})
vim.api.nvim_set_keymap('i', '(', '()<LEFT>', {})
vim.api.nvim_set_keymap('i', '"', '""<LEFT>', {})
vim.api.nvim_set_keymap('i', "'", "''<LEFT>", {})
vim.api.nvim_set_keymap('i', ',', ',<Space>', {})
vim.api.nvim_set_keymap('i', ':', ':<Space>', {})

-- ヴィジュアルモードの設定
vim.api.nvim_set_keymap('v', ';d', '"_d', {})
vim.api.nvim_set_keymap('v', ';dd', '"_dd', {})
