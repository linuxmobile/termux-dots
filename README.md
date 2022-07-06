## Configurando Termux para Programador Fullstack:

### Instalando Termux y addons:

1. *Primero que nada debemos eliminar Termux, y las apps de termux que hayamos instalado anteriormente.*

2. Instalamos Termux desde [acá](https://github.com/termux/termux-app/actions/workflows/debug_build.yml)

*Tenemos que abrir el primer resultado y descargar `termux-app_v0.xxx+xxx-github-debug_arm64-v8a`*

3. También descargamos e instalamos [Termux:Styles Rosé Pine](https://github.com/rose-pine/termux-styling/releases/download/v0.30-2/app-debug.apk)

4. Una vez iniciado Termux, mantemos presionado y configuramos el theme *Rosé Pine*.

5. Vamos atrás, `CHOOSE FONT`, y seleccionamos _Cartograph CF_.

### Instalando paquetes útiles:

1. Instalamos zsh y starship.

`pkg i -y git zsh starship neovim exa bat neofetch tmux lf`

2. Clonamos algunos plugins de oh-my-zsh

*No vamos a utilizar oh-my-zsh como framework de zsh, sino que utilizaremos estos plugins como ayuda de starship*

`git clone https://github.com/zdharma-continuum/fast-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/fast-syntax-highlighting`
`git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
`git clone https://github.com/zsh-users/zsh-completions $HOME/.oh-my-zsh/custom/plugins/zsh-completions`

2. Clonamos la config de tmux:

`git clone https://github.com/jimeh/tmux-themepack $HOME/.tmux-themepack`

3. Clonamos la config de nvchad:

`git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 ; nvim`