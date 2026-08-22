return {
  "lervag/vimtex",
  lazy = false, -- 通常加载整个会话
  init = function(_)
    -- vim.g.vimtex_view_method = "zathura_simple" -- 或 "skim"、"evince" 等
    vim.g.vimtex_view_method = "skim" -- 或 "skim"、"evince" 等
    vim.g.vimtex_compiler_latexmk_engines = {
      ["_"] = "-xelatex", -- 默认编译引擎全局改为xelatex
      ["xelatex"] = "-xelatex",
      ["lualatex"] = "-lualatex",
    }

    -- 该项默认为 latexmk
    vim.g.vimtex_compiler_method = "tectonic"

    vim.g.tex_flavor = "latex"
    vim.g.vimtex_quickfix_mode = 0
    -- vim.g.tex_conceal = "abdmg"
    --
    -- 光标离开当前行自动触发同步
    -- vim.api.nvim_create_autocmd("CursorMoved", {
    --   pattern = "*.tex",
    --   callback = function()
    --     local vt = vim.b.vimtex
    --     if not vt then
    --       vim.notify("中断：vim.b.vimtex 不存在，VimTeX未初始化", vim.log.levels.WARN)
    --       return
    --     end
    --
    --     -- zathura_simple 不提供 view，直接执行同步命令，不读取 view
    --     vim.cmd("silent VimtexView")
    --   end,
    -- })
  end,
}
