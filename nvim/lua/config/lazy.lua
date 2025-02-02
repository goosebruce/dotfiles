-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

vim.g.ai_cmp = true
vim.g.inlay_hints_enable = false

require('lazy').setup {
  spec = {
    { 'LazyVim/LazyVim', import = 'lazyvim.plugins' },
    { import = 'plugins' },
  },
  ui = {
    border = 'rounded',
    backdrop = 100,
  },
  install = { colorscheme = { 'rose-pine' } },
  checker = { enabled = true },
}
