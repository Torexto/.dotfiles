local cursorTheme = "Moga-Candy-Grey"
local cursorSize = 24

hl.env("XCURSOR_SIZE", cursorSize)
hl.env("HYPRCURSOR_SIZE", cursorSize)
hl.env("XCURSOR_THEME", cursorTheme)
hl.env("HYPRCURSOR_THEME", cursorTheme)

hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

