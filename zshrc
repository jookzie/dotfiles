alias ls="/bin/ls --color=auto"
alias ip="/bin/ip -c"
alias grep="/bin/rg --color=auto"
alias cat="/bin/bat"
alias open="/bin/xdg-open"
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
bindkey -v

autoload -Uz colors

colors

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-sudo/zsh-sudo.zsh


# Tweak zsh-syntax-highlighting colors
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=#bbff00,underline
ZSH_HIGHLIGHT_STYLES[precommand]=fg=#bbff00,underline
ZSH_HIGHLIGHT_STYLES[arg0]=fg=#bbff00
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=#ff4444

# Environment variables
export PATH="$PATH:/home/jookz/.local/bin/"
export EDITOR="/bin/vim"

PS1="%{$fg[white]%}%(5~|%-1~/…/%3~|%4~) %{$fg[cyan]%}>>>%{$reset_color%} "
