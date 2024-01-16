-- ¿¿
local M = {}

function M.replace_from_cursor(str)
  local search, replace = str:match("([^/]*)/?(.*)")
  if replace == "" then
    -- replace
    vim.cmd(".,$s/" .. search .. "//ge")
  else
    vim.cmd(".,$s/" .. search .. "/" .. replace .. "/ge")
  end
end

function M.replace_in_file(str)
  local search, replace = str:match("([^/]*)/?(.*)")
  if replace == "" then
    -- replace
    vim.cmd(":%s/" .. search .. "//ge")
  else
    vim.cmd(":%s/" .. search .. "/" .. replace .. "/ge")
  end
end

return M
