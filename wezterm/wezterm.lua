local wezterm = require("wezterm")
local config = require("config")
require("events")

-- Apply color scheme based on the WEZTERM_THEME environment variable
local themes = {
	catppuccin = "Catppuccin Mocha",
}
--local success, stdout, stderr = wezterm.run_child_process({ os.getenv("SHELL"), "-c", "printenv WEZTERM_THEME" })
--local selected_theme = stdout:gsub("%s+", "") -- Remove all whitespace characters including newline

return config
