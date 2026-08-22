-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- 窗口右上角路径标识
opt.winbar = "%=%m %f"

-- 启用全局忽略大小写 (影响搜索、补全等)
opt.ignorecase = true

-- 智能大小写：当输入包含大写字母时自动切换为大小写敏感
opt.smartcase = true

-- 强制命令行补全忽略大小写（关键选项）
opt.wildignorecase = true

-- opt.clipboard:append("unnamedplus")

-- opt.tabstop = 2
-- opt.shiftwidth = 2
-- opt.softtabstop = 2
-- opt.expandtab = true

-- ╭──────────────────────────────────────────────────────────╮
-- │                           wrap                           │
-- ╰──────────────────────────────────────────────────────────╯

-- 折叠时单词拆开
opt.linebreak = false

-- 折叠行自动更随第一行缩进
opt.breakindent = true

-- 折行行首显示标记
opt.showbreak = "↪ "

-- vim.g.python3_host_prog = "/home/lunat/.conda/envs/aip/bin/python"
