-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap

-- 防止 esc + j 误发 a-j ,仍不知道如何去除 esc 键的 meta 序列
map.del({ "n", "i" }, "<A-j>")
map.del({ "n", "i" }, "<A-k>")

-- local opt = { noremap = true, silent = true, nowait = true }
-- local opt = { noremap = true, silent = true }

-- 直接发送，防止等待输入序列
-- local feedkeys = function(key)
--   -- 将特殊键位（如 <Up>）转换为 Neovim 内部编码
--   return function()
--     local termcode = vim.api.nvim_replace_termcodes(key, true, true, true)
--     -- 立即发送键位事件，不等待输入队列
--     vim.api.nvim_feedkeys(termcode, "n", true)
--   end
-- end

-- keymap.set("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume"})

-- 修改成不一样的历史记录
-- map.set("c", "<C-p>", feedkeys("<Up>"), opt)
-- map.set("c", "<Up>", feedkeys("<C-p>"), opt)
-- map.set("c", "<C-n>", feedkeys("<Down>"), opt)
-- map.set("c", "<Down>", feedkeys("<C-n>"), opt)

-- map.set("n", "<A-j>", "j", { desc = "Move Down" })
-- map.set("n", "<A-k>", "k", { desc = "Move Up" })
--
-- 这里调用的是 lazyVim 当中的设置 map 的方法
local lazy_map = LazyVim.safe_keymap_set

lazy_map({ "n", "t" }, "<c-.>", function()
  Snacks.terminal.focus(nil, { cwd = vim.fn.expand("%:p:h") })
end, { desc = "Terminal (%:p:h)" })
