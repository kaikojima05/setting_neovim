if not vim.g.vscode then
  require('plugin.bufferline')
  require('plugin.cmp')
  require('plugin.lsp')
  require('plugin.lualine')
  require('plugin.nullLs')
  require('plugin.pugLint')
  require('plugin.telescope')
  require('plugin.treesitter')
  require('plugin.vsnip')

  return {
    vsnip = vsnip,
    bufferline = bufferline,
    cmp = cmp,
    lsp = lsp,
    lualine = lualine,
    nullLs = nullLs,
    pugLint = pugLint,
    telescope = telescope,
    treesitter = treesitter,
    lspconfig = lspconfig,
  }
end
