require("format")
require("status")
require("event")

return {
	color_scheme = "ChallengerDeep",
	window_background_opacity = 0.93,

	font_size = 13.5,

	keys = require("keybinds").keys,
	key_tables = require("keybinds").key_tables,
	-- all keybinds disable
	disable_default_key_bindings = false,

	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 2000 },
	status_update_interval = 1000,

	window_decorations = "RESIZE",

	mouse_bindings = require("mousebinds").mouse_bindings,
}
