if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -Ux EDITOR nvim
# set -g fish_color_command normal
# set -g fish_color_param gray
# set -g fish_color_error gray
starship init fish | source
