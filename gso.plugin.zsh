# gso.plugin.zsh
if ! command -v rg &>/dev/null; then
  echo "rg (ripgrep) is not installed. Install it with your package manager."
  return
fi

function gso() {
  local file line_number result

  result=$(rg --color=always --line-number "$" | fzf --ansi)
  file=$(echo "$result" | cut -d ':' -f 1)
  line_number=$(echo "$result" | cut -d ':' -f 2)

  if [ -z "$file" ]; then
    zle accept-line
    return
  fi

  # Check if the default editor is vim (or variants like nvim)
  if [[ "$EDITOR" == *"vim"* ]]; then
    # Open with vim at the specified line
    $EDITOR "$file" +$line_number
  else
    # Open with the default editor without specifying the line
    $EDITOR "$file"
  fi
  zle reset-prompt
}

# Check if the GSO_ENABLE_KEYBINDINGS variable is set to true
if [ "$GSO_ENABLE_KEYBINDINGS" = "true" ]; then
  zle -N gso
  bindkey '^G' gso
fi
