# Config paths
ALACRITTY_CONFIG="$HOME/.config/alacritty/alacritty.toml"
LIGHT_THEME="catppuccin_latte.toml"
DARK_THEME="catppuccin_frappe.toml"

NVIM_CONFIG="$HOME/.config/nvim/lua/plugins/catppuccin.lua"
DARK_SCHEME="catppuccin-frappe"
LIGHT_SCHEME="catppuccin-latte"

# Switch to LIGHT mode
if tmux show-option -g status-bg | grep -q "black"; then
  # Nvim
  sed -i "s/vim.cmd.colorscheme(\"$DARK_SCHEME\")/vim.cmd.colorscheme(\"$LIGHT_SCHEME\")/" "$NVIM_CONFIG"
  
  # Alacritty
  sed -i "s/$DARK_THEME/$LIGHT_THEME/" "$ALACRITTY_CONFIG"

  # Tmux
  tmux set -g status-bg '#d0d0d0'  # Slightly off-white for better readability
  tmux set -g status-fg '#333333'  # Dark gray for better contrast

  echo "Switched to LIGHT theme"

# Switch to DARK mode
else
  # Nvim
  sed -i "s/colorscheme(\"$LIGHT_SCHEME\")/colorscheme(\"$DARK_SCHEME\")/" "$NVIM_CONFIG"

  # Alacritty
  sed -i "s/$LIGHT_THEME/$DARK_THEME/" "$ALACRITTY_CONFIG"

  # Tmux
  tmux set -g status-bg black
  tmux set -g status-fg white

  echo "Switched to DARK theme"
fi
