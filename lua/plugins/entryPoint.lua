local replaceFunction = require('plugins.replaceFunction')

if not vim.g.vscode then
  require('plugins.onedark')
  require('plugins.git')
  require('plugins.keymap')
  require('plugins.highlights')
  require('plugins.terminalemulatorColor')
  require('plugins.bufferline')
  require('plugins.lualine')
end

if not vim.g.vscode then
  return {
    onedark = onedark,
    replaceFunction = replaceFunction,
    git = git,
    keymap = keymap,
    highlights = highlights,
    terminalemulatorColor = terminalemulatorColor,
    lualine = lualine,
    bufferline = bufferline,
  }
else
  return {
    replaceFunction = replaceFunction,
  }
end
