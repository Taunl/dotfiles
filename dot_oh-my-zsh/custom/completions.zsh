# organizing complete settings

# ╭──────────────────────────────────────────────────────────╮
# │                         python                           │
# ╰──────────────────────────────────────────────────────────╯

# tab 补全 python 命令时，文件按下列格式排序
complete -f -X '*.@(tex|bk|pdf|yaml|log|root|joblib)' p python python3

# ╭──────────────────────────────────────────────────────────╮
# │                          nvim                            │
# ╰──────────────────────────────────────────────────────────╯

#  tab 补全 vim 命令时，排除以下格式
complete -f -X '*.@(o|so|so.!(conf|*/*)|a|[rs]pm|gif|jp?(e)g|mp3|mp?(e)g|avi|asf|ogg|class|foo|bar|pdf)' v vi vim gvim rvim view rview rgvim rgview gview

