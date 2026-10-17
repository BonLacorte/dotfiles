local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Launch Ubuntu WSL by default
config.default_domain = 'WSL:Ubuntu'

-- Rosé Pine Moon appearance
config.color_scheme = 'rose-pine-moon'
config.font = wezterm.font('Hack Nerd Font Mono')
config.font_size = 13.0

-- Subtle transparency
config.window_background_opacity = 0.90

-- Hide the tab bar when only one tab is open
config.hide_tab_bar_if_only_one_tab = true

return config
