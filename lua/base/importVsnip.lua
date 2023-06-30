-- vsnip.lua
_G.setup_vsnip = function()
    vim.g.vsnip_snippet_dir = '~/.config/nvim/vsnips'

    vim.g.vsnip_filetypes = {}
    vim.g.vsnip_filetypes.javascript = {'javascript', 'html'}
    vim.g.vsnip_filetypes.javascriptreact = {'javascriptreact', 'javascript', 'html'}
    vim.g.vsnip_filetypes.typescript = {'typescript', 'html'}
    vim.g.vsnip_filetypes.typescriptreact = {'typescriptreact', 'typescript', 'html'}
end

-- Run the setup function as Vimscript at the end of all plugin loading
vim.cmd('autocmd VimEnter * lua setup_vsnip()')
