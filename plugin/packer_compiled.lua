-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/kojimagai/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/kojimagai/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/kojimagai/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/kojimagai/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/kojimagai/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim",
    url = "https://github.com/tjdevries/colorbuddy.nvim"
  },
  ["git.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/git.nvim",
    url = "https://github.com/dinhhuy258/git.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neosolarized.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/neosolarized.nvim",
    url = "https://github.com/svrana/neosolarized.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\2\nˆ\1\0\4\v\0\6\0\0195\4\0\0\15\0\3\0X\5\a€6\5\1\0009\5\2\5'\a\3\0\18\b\4\0\18\t\3\0B\5\4\2\18\4\5\0006\5\1\0009\5\4\0059\5\5\5\18\a\0\0\18\b\1\0\18\t\2\0\18\n\4\0B\5\5\1K\0\1\0\20nvim_set_keymap\bapi\nforce\15tbl_extend\bvim\1\0\1\fnoremap\2¢\4\1\0\a\0\19\00023\0\0\0\18\1\0\0'\3\1\0'\4\2\0'\5\3\0005\6\4\0B\1\5\1\18\1\0\0'\3\5\0'\4\2\0'\5\3\0005\6\6\0B\1\5\1\18\1\0\0'\3\1\0'\4\a\0'\5\b\0005\6\t\0B\1\5\1\18\1\0\0'\3\5\0'\4\a\0'\5\b\0005\6\n\0B\1\5\1\18\1\0\0'\3\1\0'\4\v\0'\5\f\0005\6\r\0B\1\5\1\18\1\0\0'\3\5\0'\4\v\0'\5\f\0005\6\14\0B\1\5\1\18\1\0\0'\3\1\0'\4\15\0'\5\16\0005\6\17\0B\1\5\1\18\1\0\0'\3\5\0'\4\15\0'\5\16\0005\6\18\0B\1\5\1K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2@vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'\f<S-Tab>\1\0\1\texpr\2\1\0\1\texpr\2>vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)' : '<Tab>'\n<Tab>\1\0\1\texpr\2\1\0\1\texpr\2Cvsnip#expandable()  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'\n<C-l>\1\0\1\texpr\2\6s\1\0\1\texpr\2;vsnip#available(1)  ? '<Plug>(vsnip-expand)' : '<C-j>'\n<C-j>\6i\0\0" },
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/kojimagai/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\nˆ\1\0\4\v\0\6\0\0195\4\0\0\15\0\3\0X\5\a€6\5\1\0009\5\2\5'\a\3\0\18\b\4\0\18\t\3\0B\5\4\2\18\4\5\0006\5\1\0009\5\4\0059\5\5\5\18\a\0\0\18\b\1\0\18\t\2\0\18\n\4\0B\5\5\1K\0\1\0\20nvim_set_keymap\bapi\nforce\15tbl_extend\bvim\1\0\1\fnoremap\2¢\4\1\0\a\0\19\00023\0\0\0\18\1\0\0'\3\1\0'\4\2\0'\5\3\0005\6\4\0B\1\5\1\18\1\0\0'\3\5\0'\4\2\0'\5\3\0005\6\6\0B\1\5\1\18\1\0\0'\3\1\0'\4\a\0'\5\b\0005\6\t\0B\1\5\1\18\1\0\0'\3\5\0'\4\a\0'\5\b\0005\6\n\0B\1\5\1\18\1\0\0'\3\1\0'\4\v\0'\5\f\0005\6\r\0B\1\5\1\18\1\0\0'\3\5\0'\4\v\0'\5\f\0005\6\14\0B\1\5\1\18\1\0\0'\3\1\0'\4\15\0'\5\16\0005\6\17\0B\1\5\1\18\1\0\0'\3\5\0'\4\15\0'\5\16\0005\6\18\0B\1\5\1K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2@vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'\f<S-Tab>\1\0\1\texpr\2\1\0\1\texpr\2>vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)' : '<Tab>'\n<Tab>\1\0\1\texpr\2\1\0\1\texpr\2Cvsnip#expandable()  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'\n<C-l>\1\0\1\texpr\2\6s\1\0\1\texpr\2;vsnip#available(1)  ? '<Plug>(vsnip-expand)' : '<C-j>'\n<C-j>\6i\0\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
