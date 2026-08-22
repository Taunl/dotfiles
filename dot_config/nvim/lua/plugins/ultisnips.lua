return { -- 在你的 lazy 配置中添加
  enabled = false,

  "SirVer/ultisnips",
  -- dependencies = { "honza/vim-snippets" }, -- 可选，提供预置片段
  -- ft = { "markdown" },
  init = function()
    -- 见下方通用配置
    vim.g.UltiSnipsExpandTrigger = "<c-d>"
    vim.g.UltiSnipsJumpForwardTrigger = "<c-j>"
    vim.g.UltiSnipsJumpBackwardTrigger = "<c-k>"
    vim.g.UltiSnipsSnippetDirectories = { "UltiSnips", "my-snippets" }
  end,
}
