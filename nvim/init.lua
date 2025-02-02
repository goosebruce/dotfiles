require 'config.keymaps'
require 'config.lazy'

local function file_exists(file)
  local f = io.open(file, 'r')
  if f then
    f:close()
    return true
  else
    return false
  end
end

local session_file = '.session.vim'

if file_exists(session_file) then
  vim.cmd('source ' .. session_file)
end
