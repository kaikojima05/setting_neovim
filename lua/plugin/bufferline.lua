-- bufferline の設定
local status, bufferline = pcall(require, "bufferline")
if (not status) then
  print("Bufferline module could not be loaded.")
  return
end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'slant',
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    color_icons = true
  },
  highlights = {
    separator = {
      guifg = '#073642',
      guibg = '#002b36',
    },
    separator_selected = {
      guifg = '#073642',
    },
    background = {
      guifg = '#657b83',
      guibg = '#002b36'
    },
    buffer_selected = {
      guifg = '#fdf6e3',
      gui = "bold",
    },
    fill = {
      guibg = '#073642'
    }
  },
})

vim.keymap.set('n', '<J-Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
