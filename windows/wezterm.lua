local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- The default terminal session will open in this WSL distribution.
config.default_domain = 'WSL:Ubuntu'

-- Basic appearance choices (easy to change later).
config.font_size = 12.0
config.color_scheme = 'rose-pine-moon'
config.hide_tab_bar_if_only_one_tab = false

return config
