
return {
  -- Neogit: Git management inside Neovim
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
    },
    opts = {},
    keys = {
      {
        '<leader>g',
        function()
          require('neogit').open()
        end,
        desc = 'Open Neogit',
      },
    },
  },

  -- Gitsigns: Git indicators and inline blame
  {
    'lewis6991/gitsigns.nvim',
    event = 'BufWinEnter',
    opts = {
      current_line_blame = true,
    },
  },
}
