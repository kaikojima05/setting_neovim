vim.g.ale_fixers = {
  ['*'] = {'remove_trailing_lines', 'trim_whitespace'},
  pug = {'pug-lint'},
}
vim.g.ale_linters = {
  pug = {'pug-lint'},
}
vim.g.ale_linters_explicit = 1
