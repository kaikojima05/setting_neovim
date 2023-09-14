local replaceFunction = require('base.replaceFunction')

if not vim.g.vscode then
  require('base.autopairs')
  require('base.autotag')
  require('base.git')
  require('base.lspkind')
  require('base.keymap')
  require('base.highlights')
  require('base.indentLine')
  require('base.camelCaseMotion')
  require('base.everforest')
  require('base.terminalemulatorColor')
end

if not vim.g.vscode then
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
    everforest = everforest,
    terminalemulatorColor = terminalemulatorColor,
  }
else
  return {
    replaceFunction = replaceFunction,
  }
end
