if not vim.g.vscode then
  -- insert と visual モードでのキーマップを設定する
  local opts = { noremap = true, silent = true, replace_keycodes = false }

  -- ターミナルが256色設定できるようにする
  vim.opt.termguicolors = true

  -- バックアップに関する設定
  vim.opt.backup = false
  vim.opt.swapfile = false

  -- encoding
  vim.opt.encoding = "utf-8"
  vim.scriptencoding = "utf-8"
  vim.fileencoding = { "utf-8", "latin1" }
  os.execute("export LANG=en_US.UTF-8")

  -- インデントの設定
  vim.opt.list = false
  vim.opt.tabstop = 2
  vim.opt.softtabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true

  -- 行番号
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.backspace = "indent,eol,start"

  -- ヤンクするとクリップボードに保存される
  vim.api.nvim_set_option('clipboard', 'unnamedplus')

  -- ターミナルモードの設定
  vim.api.nvim_set_keymap('t', 'jj', '<C-\\><C-n>', { noremap = true })
  vim.cmd [[
  command! -nargs=* T call v:lua.SplitTerm(<f-args>)
]]

  function _G.SplitTerm(command)
    local height = math.ceil(vim.o.lines * 0.3)
    vim.cmd("botright " .. height .. "split")
    vim.cmd("terminal " .. (command or ''))
    vim.cmd("startinsert")
  end

  -- ノーマルモードの設定
  vim.api.nvim_set_keymap('n', '<Space>h', '^', {})
  vim.api.nvim_set_keymap('n', '<Space>l', '$', {})
  vim.api.nvim_set_keymap('n', 'dh', 'd0', {})
  vim.api.nvim_set_keymap('n', 'dl', 'd$', {})
  vim.api.nvim_set_keymap('n', 'nd', ':Explore<CR>', {})
  vim.api.nvim_set_keymap('n', 'vv', ':vsp<CR>', {})
  vim.api.nvim_set_keymap('n', 'vl', '<C-w>l', {})
  vim.api.nvim_set_keymap('n', 'vh', '<C-w>h', {})
  vim.api.nvim_set_keymap('n', 'vu', '<C-w>w', {})
  vim.api.nvim_set_keymap('n', ';d', '"_d', {})
  vim.api.nvim_set_keymap('n', ';dd', '"_dd', {})
  vim.api.nvim_set_keymap('n', ';dw', '"_dw', {})
  vim.api.nvim_set_keymap('n', ';dl', '"_dl', {})
  vim.api.nvim_set_keymap('n', 'le', 'b', {})
  vim.api.nvim_set_keymap('n', ':rf', ':ReplaceFromCursor ', { noremap = true })
  vim.api.nvim_set_keymap('n', ':ri', ':ReplaceInFile ', { noremap = true })
  vim.api.nvim_set_keymap('n', 'term', ':terminal<CR>', {})

  -- インサートモードの設定
  vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { silent = true })
  vim.api.nvim_set_keymap('i', '{', '{}<LEFT>', {})
  vim.api.nvim_set_keymap('i', '[', '[]<LEFT>', {})
  vim.api.nvim_set_keymap('i', '(', '()<LEFT>', {})
  vim.api.nvim_set_keymap('i', '"', '""<LEFT>', {})
  vim.api.nvim_set_keymap('i', "'", "''<LEFT>", {})
  vim.api.nvim_set_keymap('i', '`', '``<LEFT>', {})
  vim.api.nvim_set_keymap('i', ',', ',<Space>', {})
  vim.api.nvim_set_keymap('i', ':', ':<Space>', {})
  vim.api.nvim_set_keymap('i', 'kk', '<ESC>la', {})

  -- ヴィジュアルモードの設定
  vim.api.nvim_set_keymap('v', ';d', '"_d', {})
  vim.api.nvim_set_keymap('v', ';dd', '"_dd', {})

  -- lspsaga の設定
  vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")
  vim.keymap.set('n', 'lf', '<cmd>Lspsaga lsp_finder<CR>')
  vim.keymap.set("n", "rk", "<cmd>Lspsaga peek_definition<CR>")
  vim.keymap.set("n", "ga", "<cmd>Lspsaga code_action<CR>")
  vim.keymap.set("n", "gn", "<cmd>Lspsaga rename<CR>")
  vim.keymap.set("n", "ge", "<cmd>Lspsaga show_line_diagnostics<CR>")
  vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>")
  vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")

  vim.keymap.set("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>")
  -- vim.keymap.set("n", "<A-d>", "<cmd>Lspsaga open_floaterm lazygit<CR>")
  vim.keymap.set("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]])
end
