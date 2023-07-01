-- vsnip config
local g = vim.g

-- vsnips の import 先
g.vsnip_snippet_dir = '~/.config/nvim/vsnips'

-- vsnips のキーバインド
-- Expand
vim.api.nvim_set_keymap('i', '<C-j>', 'vsnip#available(1)  ? "<Plug>(vsnip-expand)"         : "<C-j>"', {expr = true})
vim.api.nvim_set_keymap('s', '<C-j>', 'vsnip#available(1)  ? "<Plug>(vsnip-expand)"         : "<C-j>"', {expr = true})

-- Expand or jump
vim.api.nvim_set_keymap('i', '<C-l>', 'vsnip#expandable()  ? "<Plug>(vsnip-expand-or-jump)" : "<C-l>"', {expr = true})
vim.api.nvim_set_keymap('s', '<C-l>', 'vsnip#expandable()  ? "<Plug>(vsnip-expand-or-jump)" : "<C-l>"', {expr = true})

-- Jump forward or backward
vim.api.nvim_set_keymap('i', '<Tab>', 'vsnip#jumpable(1)   ? "<Plug>(vsnip-jump-next)"      : "<Tab>"', {expr = true})
vim.api.nvim_set_keymap('s', '<Tab>', 'vsnip#jumpable(1)   ? "<Plug>(vsnip-jump-next)"      : "<Tab>"', {expr = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'vsnip#jumpable(-1)  ? "<Plug>(vsnip-jump-prev)"      : "<S-Tab>"', {expr = true})
vim.api.nvim_set_keymap('s', '<S-Tab>', 'vsnip#jumpable(-1)  ? "<Plug>(vsnip-jump-prev)"      : "<S-Tab>"', {expr = true})