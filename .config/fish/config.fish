source ~/.cache/wal/colors.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Variables
set -Ux EDITOR nvim
set -U fish_user_paths ~/.dotnet/ $fish_user_paths
set -U fish_user_paths ~/.sdk/Android/platform-tools/ $fish_user_paths
set -U fish_user_paths ~/.sdk/Android/emulator/ $fish_user_paths

# Aliases
function fc
  nvim ~/.config/fish/config.fish
end

function ff
  fastfetch
end

# Executables
starship init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
