require('base.autopairs')
require('base.autotag')
require('base.git')
require('base.lspkind')
require('base.neosolarized')
require('base.keymap')
require('base.highlights')
require('base.indentLine')
require('base.camelCaseMotion')
require('base.sidebarNvim')
local replaceFunction = require('base.replaceFunction')

return {
  replaceFunction = replaceFunction,
  autopairs = autopairs,
  autotag = autotag,
  git = git,
  importVsnip = importVsnip,
  lspkind = lspkind,
  neosolarized = neosolarized,
  keymap = keymap,
  highlights = highlights,
  indentLine = indentLine,
  camelCaseMotion = camelCaseMotion,
  sidebarNvim = sidebarNvim
}
