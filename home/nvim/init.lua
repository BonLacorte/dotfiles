-- Basic editor preferences
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.termguicolors = true

-- Bootstrap lazy.nvim on first launch
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

-- A minimal, approachable theme plugin
require('lazy').setup({
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('rose-pine')
    end,
  },
})
