# ╭──────────────────────────────────────────────────────────╮
# │                       Variables                          │
# ╰──────────────────────────────────────────────────────────╯

# use `set` to look all variables include env and local variables
# use `env` to look all env variables

# 注意，这里是改内置 time 命令的输出格式，目前的格式会变得和 bash 中内置的 time 差不多
# 分为总，系统，用户耗时
# 为什么不用 export 呢？除非你要将这个变量也传给 shell 运行的子程序，否则不用 export
TIMEFMT=$'real\t%E\nuser\t%U\nsys\t%S'

export EDITOR="nvim"

export VISUAL=$EDITOR

# export GIT_EDITOR=$EDITOR

# 设置 ripgrep 的配置文件位置
export RIPGREP_CONFIG_PATH=$HOME/.config/ripgreprc

# MANPAGER 是 man 手册的分页器，默认情况下 man 使用 less 与 more 来作为分页器, 这里改为使用nvim
export MANPAGER='nvim +Man!'
