local wezterm = require("wezterm")

local function BaseName(s)
	return string.gsub(s, "(.*[/\\])(.*)", "%2")
end

wezterm.on("format-window-title", function(tab)
	return BaseName(tab.active_pane.foreground_process_name)
end)
