local wezterm = require("wezterm")
local act = wezterm.action

local config = {
	-- default_prog = {  },
	force_reverse_video_cursor = true,
	default_cursor_style = "SteadyUnderline",
	-- colors = {
	-- 	cursor_bg = "#eee",
	-- 	cursor_border = "#eee",
	-- 	cursor_fg = "#111",
	-- },
}

-- applying styles
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
-- config.color_scheme = "Bleh-1 (terminal.sexy)"
config.hide_tab_bar_if_only_one_tab = true
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8

-- key leader
config.leader = { key = "i", mods = "ALT", timeout_milliseconds = 1000 }

-- keyboard shortcuts
config.keys = {
	{
		key = "i",
		mods = "LEADER",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "u",
		mods = "LEADER",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "ALT",
		action = act.RotatePanes("CounterClockwise"),
	},
	-- Navigate panels
	{
		key = "h",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Right"),
	},
	-- Resize panel
	{
		key = "LeftArrow",
		mods = "SHIFT",
		action = act.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "RightArrow",
		mods = "SHIFT",
		action = act.AdjustPaneSize({ "Right", 5 }),
	},
	{
		key = "UpArrow",
		mods = "SHIFT",
		action = act.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "DownArrow",
		mods = "SHIFT",
		action = act.AdjustPaneSize({ "Down", 5 }),
	},
}

return config
