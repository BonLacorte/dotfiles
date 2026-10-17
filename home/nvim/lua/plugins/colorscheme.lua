
return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    config = function()
      -- Detect Ubuntu running inside WSL
      local release = vim.uv.os_uname().release:lower()
      local is_wsl =
        release:find('microsoft', 1, true) ~= nil
        or release:find('wsl', 1, true) ~= nil

      -- Always use the dark Moon variant
      vim.opt.background = 'dark'

      require('rose-pine').setup({
        dark_variant = 'moon',
        dim_inactive_windows = false,
        extend_background_behind_borders = false,
        styles = {
          italic = false,
          transparency = is_wsl,
        },
      })

      vim.cmd.colorscheme('rose-pine')

      -- Improve Snacks picker directory contrast
      local palette = require('rose-pine.palette')
      vim.api.nvim_set_hl(0, 'SnacksPickerDir', {
        fg = palette.subtle,
      })
    end,
  },
}
