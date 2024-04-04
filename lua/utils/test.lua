local M = {}

local Terminal = require('toggleterm.terminal').Terminal

local lang = ''
local file_type = ''

local function test(term)
  print('Term ' .. term.bufnr .. ' on open')
end

return M
