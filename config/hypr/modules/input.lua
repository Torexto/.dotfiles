local config = require("../config")

hl.config({
	input = {
		kb_layout = "pl",
		follow_mouse = 1,
		sensitivity = 0,

		touchpad = {
			natural_scroll = true,
			disable_while_typing = false,
		},
	},
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.gesture({
	fingers = 3,
	direction = "vertical",
	action = function()
		hl.dsp.exec_cmd(config.launcher)
	end,
})
hl.gesture({ fingers = 4, direction = "down", action = "close" })
