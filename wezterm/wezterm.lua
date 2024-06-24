local wezterm = require("wezterm")
local act = wezterm.action

local config = {
	default_prog = { "pwsh.exe" },
	force_reverse_video_cursor = true,
}

config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.color_scheme = "Default (dark) (terminal.sexy)"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.8

-- keyboard shortcuts
config.keys = {
	{

		key = "k",
		mods = "CTRL",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "i",
		mods = "CTRL",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "n",
		mods = "CTRL",
		action = act.RotatePanes("CounterClockwise"),
	},
}

return config
