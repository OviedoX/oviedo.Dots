-- Pull in the weztern API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {
  default_prog = {"pwsh.exe"},
  force_reverse_video_cursor = true,
}

-- font config
config.font = wezterm.font('JetBrains Mono', { weight = 'Medium' })
config.font_size = 11.0
config.line_height = 1.2

-- Custom colors
config.colors = {
  --name = 'Oviedo theme',
  foreground = '#E3E1E4',
  background = '#111111',
  cursor_bg = '#eeeeee',
  cursor_border = '#eeeeee',
  selection_bg = '#13364B',
  ansi = {'#1A181A', '#F82F66', '#7FCD2B', '#E5DE2D', '#1080D0', '#7C63F2', '#3AA5D0', '#E3E1E4'},
  brights = {'#707070', '#F882A5', '#A4CD7C', '#E5D37E', '#22D5FF', '#AB9DF2', '#7ACCD7', '#E3E1E4'},
}

--config.color_scheme = 'Oviedo theme'

-- Other styles
config.window_background_opacity = 0.7
config.hide_tab_bar_if_only_one_tab = true
-- config.scrollback_lines = 3500
-- config.window_background_blur = true

-- In newer version of wezterm, use the config_builder which will
-- help provide clearer error messages
-- if wezterm.config_builder then
--   config = wezterm.config_builder()
-- end

-- return finally config to wezterm
return config
