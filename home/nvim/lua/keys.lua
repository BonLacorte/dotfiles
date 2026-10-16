local keymap = vim.keymap.set

-- Save the current file
keymap('n', '<leader>w', '<cmd>write<CR>', {
  desc = 'Save file',
})

-- Quit the current window
keymap('n', '<leader>q', '<cmd>quit<CR>', {
  desc = 'Quit window',
})

-- Select all text
keymap('n', '<leader>a', 'ggVG', {
  desc = 'Select all text',
})

-- Clear search highlights
keymap('n', '<leader>h', '<cmd>nohlsearch<CR>', {
  desc = 'Clear search highlights',
})
