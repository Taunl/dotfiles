# ╭──────────────────────────────────────────────────────────╮
# │                           main                           │
# ╰──────────────────────────────────────────────────────────╯

# bat 代替 cat
[[ -x "$(command -v bat)" ]] && alias cat="bat --paging=never" 

# dust 代替 du
[[ -x "$(command -v dust)" ]] && alias du="dust"

# duf 代替 df
[[ -x "$(command -v duf)" ]] && alias df="duf"

# lsd 代替 ls
if command -v lsd &> /dev/null; then
    alias ls="lsd --icon=always --group-dirs=first" # 总是显示图标，以及目录优先显示
    alias ll="lsd -l --date relative"
    alias la="lsd -a"
fi

# eza 替代 tree
[[ -x "$(command -v eza)" ]] && alias tree="eza --tree --icons"


# ╭──────────────────────────────────────────────────────────╮
# │                      fzf-shortcuts                       │
# ╰──────────────────────────────────────────────────────────╯

# 干掉进程
alias killp='ps -ef | sed 1d | fzf | awk "{print $2}" | xargs kill'

# sw 是直接选图
[[ -x "$(command -v awww)" ]] && alias ="(cd ~/Pictures/wallpaper/; fzf | xargs awww img)"

# ╭──────────────────────────────────────────────────────────╮
# │                       shortcuts                          │
# ╰──────────────────────────────────────────────────────────╯

alias sb='. ~/.bashrc'
alias sz='. ~/.zshrc'

# ╭──────────────────────────────────────────────────────────╮
# │                          python                          │
# ╰──────────────────────────────────────────────────────────╯

[[ -x "$(command -v python)" ]] && alias p="python"


# ╭──────────────────────────────────────────────────────────╮
# │                     strength  command                    │
# ╰──────────────────────────────────────────────────────────╯
alias mv='mv -i' # confirm override when moving
alias cp='cp -i' # confirm override when copying
alias ping='ping -c 4'

# ╭──────────────────────────────────────────────────────────╮
# │                         nvim                             │
# ╰──────────────────────────────────────────────────────────╯

alias v='nvim'
alias vv="nvim +'cd ~/.config/nvim/'"
alias vm="nvim +'cd ~/Documents/markdoc/'"
alias vb="nvim ~/.bashrc"
alias vz="nvim ~/.zshrc"

# 在 vd 文件夹中显示各种隐藏文件
alias vd='nvim +"cd ~/dotfiles/ | lua Snacks.config.picker.sources={explorer={hidden=true}, files={hidden=true}, grep={hidden=true}}"'
# | Lazy load ultisnips' +'UltiSnipsAddFiletypes config'"
alias vt="nvim ~/.tmux.conf"
alias vp="nvim ~/Desktop/Ongoing.md"
alias vr="nvim ~/.local/share/fcitx5/rime/wubi86_jidian_user.dict.yaml"

# ╭──────────────────────────────────────────────────────────╮
# │                        utilities                         │
# ╰──────────────────────────────────────────────────────────╯

alias cpu='ps -eo user,cmd:120,%cpu --sort=+%cpu'
alias gpu='nvidia-smi'
alias mem='ps -eo user,cmd:120,%mem --sort=+%mem'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# ╭──────────────────────────────────────────────────────────╮
# │                         grep                             │
# ╰──────────────────────────────────────────────────────────╯

alias gpy='grep -rn --include \*.py'
alias gcpp='grep -rn --include \*.cpp --include \*.h'

# ╭──────────────────────────────────────────────────────────╮
# │                         tmux                             │
# ╰──────────────────────────────────────────────────────────╯

alias tm="tmux new -A -s main"
alias tn='tmux new-session -s main'
alias ta='tmux attach'
alias tls='tmux ls'
alias tss="vim -c \":Telescope tmux sessions quit_on_select=true\""
alias tmv='tmux rename-session -t'
alias tk='tmux kill-session -t'

# ╭──────────────────────────────────────────────────────────╮
# │                         navigator                        │
# ╰──────────────────────────────────────────────────────────╯

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cdf='cd ~/dotfiles/'

# ╭──────────────────────────────────────────────────────────╮
# │                         git                              │
# ╰──────────────────────────────────────────────────────────╯

# open lazygit
alias lg=lazygit

# git log <file>
alias glogf='git ls-files | fzf | xargs git log'

# git checkout <branch-name>
alias gcb='git branch | fzf --preview "git show --color=always {-1}" --bind "enter:become(git checkout {-1})"'

# ╭──────────────────────────────────────────────────────────╮
# │                          ip                              │
# ╰──────────────────────────────────────────────────────────╯

alias ipv4='curl https://api.ipify.org'
alias ipv6='curl https://api6.ipify.org'
