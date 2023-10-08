local wezterm = require("wezterm")

wezterm.on("toggle-font-size", function(window, pane)
	local overrides = window:get_config_overrides() or {}
	overrides.font_size = not overrides.font_size and 12.5 or nil

	window:set_config_overrides(overrides)
end)

local DPI_CHANGE_NUM = 140
local DPI_CHANGE_FONT_SIZE = 12.5

local prev_dpi = 0

wezterm.on("trigger-dpi", function(window, dpi)
	local overrides = window:get_config_overrides() or {}
	overrides.font_size = dpi >= DPI_CHANGE_NUM and DPI_CHANGE_FONT_SIZE or nil

	window:set_config_overrides(overrides)
end)

wezterm.on("update-status", function(window, pane)
	local dpi = window:get_dimensions().dpi

	if dpi == prev_dpi then
		return
	end

	wezterm.emit("trigger-dpi", window, dpi)

	prev_dpi = dpi
end)

wezterm.on("show-title-bar", function(window, pane)
	local overrides = window:get_config_overrides() or {}

	overrides.window_decorations = "TITLE | RESIZE"
	window:set_config_overrides(overrides)
end)
