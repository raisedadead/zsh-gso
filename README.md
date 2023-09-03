# zsh-gso

> A Zsh plugin to Grep (ripgrep), Quick-select (fzf) and Open a file in your
> $EDITOR, in a blink! _Jumps to the first match by default in vim/neovim._

## Installation

### Zplug

```zsh
zplug "raisedadead/zsh-gso"
```

### Antigen

```zsh
antigen bundle raisedadead/zsh-gso
```

### Oh-My-Zsh (WHY?!!)

```zsh
git clone https://github.com/raisedadead/zsh-gso.git $ZSH_CUSTOM/plugins/zsh-gso
```

```zsh
plugins=(
  #...
  zsh-gso
  )
```

### Manual

```zsh
git clone https://github.com/raisedadead/zsh-gso.git
source zsh-gso/gso.plugin.zsh
```

## Usage

```zsh
gso
```

Or trigger with keybindings enabled - _Optional_ - default is disabled.

```zsh
export GSO_ENABLE_KEYBINDINGS=true
```

The default keybindings are <kbd>Ctrl</kbd> + <kbd>G</kbd>.

## License

Software: The software as it is licensed under the [ISC](LICENSE) License,
please feel free to extend, re-use, share the code.
