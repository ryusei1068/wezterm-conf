require("format")
require("status")

return {
	color_scheme = "Catppuccin Mocha",
	window_background_opacity = 0.93,

	keys = require("keybinds").keys,
	key_tables = require("keybinds").key_tables,
	-- all keybinds disable
	disable_default_key_bindings = false,

	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 2000 },
	status_update_interval = 1000,
}
