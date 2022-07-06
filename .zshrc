source $HOME/.config/lf/icons
source $HOME/.aliases
source $HOME/.autostart

#env
export VISUAL=nvim;
export EDITOR=nvim;
export SUDO_PROMPT="passwd: "

# source plugins
source $HOME/.oh-my-zsh/custom/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.oh-my-zsh/custom/plugins/zsh-completions/zsh-completions.plugin.zsh


PATH="$PREFIX/bin:$HOME/.local/bin:$PATH"
export PATH

# tty
#!/bin/sh
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P0403c58
  \e]P1ea6f91
  \e]P29bced7
  \e]P3f1ca93
  \e]P434738e
  \e]P5c3a5e6
  \e]P6eabbb9
  \e]P7faebd7
  \e]P86f6e85
  \e]P9ea6f91
  \e]PA9bced7
  \e]PBf1ca93
  \e]PC34738e
  \e]PDc3a5e6
  \e]PEeabbb9
  \e]PFffffff
  "
  # get rid of artifacts
  clear
fi

# custom function
toppy() {
    history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n 21
}

cd() {
	builtin cd "$@" && command ls --group-directories-first --color=auto -F
}

# init starship
eval "$(starship init zsh)"
# setup starship custom prompt
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml