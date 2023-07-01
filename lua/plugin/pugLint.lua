vim.g.ale_fixers = {
  ['*'] = { 'remove_trailing_lines', 'trim_whitespace' },
  pug = { 'pug-lint' },
}
vim.g.ale_linters = {
  pug = { 'pug-lint' },
}
vim.g.ale_linters_explicit = 1

vim.g['prettier#autoformat'] = 1
vim.g['prettier#autoformat_require_pragma'] = 0
vim.g['prettier#exec_cmd_async'] = 1
