hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })

-- Reguły wyłączające odstępy i obramowanie dla konkretnych widoków
hl.window_rule({
	name = "no-gaps-wtv1",
	match = { float = false, workspace = "w[tv1]" },
	border_size = 0,
	rounding = 0,
})

hl.window_rule({
	name = "no-gaps-f1",
	match = { float = false, workspace = "f[1]" },
	border_size = 0,
	rounding = 0,
})

-- Blokowanie zdarzeń maksymalizacji
hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})

-- Poprawka dla drag-and-drop w XWayland
hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

-- Specyficzne ustawienia dla aplikacji
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },
	move = "20 monitor_h-120",
	float = true,
})

hl.window_rule({
	name = "fix-zed-call",
	match = { class = "^dev.zed.Zed$", title = "^$" },
	float = true,
	size = "500 70",
})

-- Reguły anonimowe (krótka składnia)
hl.window_rule({ match = { class = "org.gnome.Nautilus" }, opacity = 0.9 })
hl.window_rule({ match = { class = "code" }, opacity = 0.9 })

hl.window_rule({ match = { class = "discord" }, workspace = "special:discord" })
hl.window_rule({ match = { class = "Spotify" }, workspace = "special:spotify" })

hl.window_rule({
	match = { class = "^jetbrains.*$", title = "^Welcome.*$" },
	tile = false,
	center = true,
})

hl.layer_rule({
	name = "noctalia",
	match = { namespace = "noctalia-background-.*$" },
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})
