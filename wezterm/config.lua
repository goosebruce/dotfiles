local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end
local action = wezterm.action

config = {
	default_cursor_style = "BlinkingBar",
	animation_fps = 1,
	max_fps = 144,
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",
	automatically_reload_config = true,
	term = "xterm-256color",
	window_close_confirmation = "NeverPrompt",
	adjust_window_size_when_changing_font_size = false,
	window_decorations = "RESIZE",
	check_for_updates = true,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = false,
	hide_tab_bar_if_only_one_tab = false,
	default_cwd = "Users/nathan/dev",
	font_size = 12,
	font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true }),
	enable_tab_bar = true,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	macos_window_background_blur = 100,
	native_macos_fullscreen_mode = true,
	color_scheme = "Catppuccin Frappe",
	-- from: https://akos.ma/blog/adopting-wezterm/
	hyperlink_rules = {
		-- Matches: a URL in parens: (URL)
		{
			regex = "\\((\\w+://\\S+)\\)",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in brackets: [URL]
		{
			regex = "\\[(\\w+://\\S+)\\]",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in curly braces: {URL}
		{
			regex = "\\{(\\w+://\\S+)\\}",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in angle brackets: <URL>
		{
			regex = "<(\\w+://\\S+)>",
			format = "$1",
			highlight = 1,
		},
		-- Then handle URLs not wrapped in brackets
		{
			-- Before
			--regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
			--format = '$0',
			-- After
			regex = "[^(]\\b(\\w+://\\S+[)/a-zA-Z0-9-]+)",
			format = "$1",
			highlight = 1,
		},
		-- implicit mailto link
		{
			regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
			format = "mailto:$0",
		},
	},
}

return config
