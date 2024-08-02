local wezterm = require("wezterm")
local act = wezterm.action

local config = {
	default_prog = { "pwsh.exe" },
	-- force_reverse_video_cursor = true,
	colors = {
		cursor_bg = "#eee",
		cursor_border = "#eee",
		cursor_fg = "#111",
	},
}

-- applying styles
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
-- config.color_scheme = "Bleh-1 (terminal.sexy)"
config.hide_tab_bar_if_only_one_tab = true
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.7

-- keyboard shortcuts
config.keys = {
	{

		key = "i",
		mods = "ALT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "i",
		mods = "CTRL",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "ALT",
		action = act.RotatePanes("CounterClockwise"),
	},
}

return config
