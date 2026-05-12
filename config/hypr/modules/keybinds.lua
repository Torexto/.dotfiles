local config = require("../config")

local mainMod = "SUPER"

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Przełączanie pulpitów (1-10)
-- Przenoszenie okien na pulpity (1-10)
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Specjalne pulpity (Scratchpady)
hl.bind("ALT + S", hl.dsp.workspace.toggle_special("spotify"))
hl.bind("ALT + D", hl.dsp.workspace.toggle_special("discord"))

-- Przewijanie pulpitów myszką
hl.bind(mainMod .. " + mouse_down", hl.dsp.layout("move -col"))
hl.bind(mainMod .. " + mouse_up", hl.dsp.layout("move +col"))

-- Zarządzanie oknami myszką
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(mainMod .. " + SHIFT + mouse:272", hl.dsp.window.resize(), { mouse = true })

-- Multimedia i Jasność (Locked + Repeating)
local multimediaOpts = { locked = true, repeating = true }
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), multimediaOpts)
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), multimediaOpts)
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), multimediaOpts)
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), multimediaOpts)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), multimediaOpts)
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), multimediaOpts)

-- Kontrola odtwarzacza
local playerOpts = { locked = true }
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), playerOpts)
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), playerOpts)
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), playerOpts)
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), playerOpts)

-- Zarządzanie oknami
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- Zmiana rozmiaru okna (aktywne)
hl.bind(mainMod .. " + minus", hl.dsp.exec_cmd("hyprctl dispatch resizeactive -20 -20"), { repeating = true })
hl.bind(mainMod .. " + equal", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 20 20"), { repeating = true })

-- Screenshoty
hl.bind(mainMod .. " + print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))
hl.bind("print", hl.dsp.exec_cmd("grim - | wl-copy"))

-- Uruchamianie aplikacji
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(config.terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(config.fileManager))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(config.launcher))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(config.browser))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd(config.settings))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(config.controls))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(config.lockscreen))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("discord"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(config.editor))

-- hl.bind("SUPER + SHIFT + 201", hl.dsp.exec_cmd(config.ai), { locked = true })
