# ╭──────────────────────────────────────────────────────────╮
# │                      shell options                       │
# ╰──────────────────────────────────────────────────────────╯

# you can use `setopt` to look all opened options and use `unsetopt` to look all closed options

# 使用 history 还是看不到时间戳和耗时，你得打开 ~/.zsh_history 文件来看
# 记录时间戳和耗时
setopt EXTENDED_HISTORY       

# 完全相同的命令不重复记录至历史
setopt HIST_IGNORE_ALL_DUPS  
