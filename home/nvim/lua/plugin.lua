-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local output = vim.fn.system({
    'git', 'clone', '--filter=blob:none', '--branch=stable',
    'https://github.com/folke/lazy.nvim.git', lazypath
  })

  if vim.v.shell_error ~= 0 then
    error('Failed to install lazy.nvim: ' .. output)
  end
end

vim.opt.rtp:prepend(lazypath)

-- Load plugins from lua/plugins/
require('lazy').setup('plugins')
