return {
  -- {
  --   "mfussenegger/nvim-lint",
  --   event = "LazyFile",
  --   opts = {
  --     -- Event to trigger linters
  --     events = { "BufWritePost", "BufReadPost", "InsertLeave" },
  --     linters_by_ft = {
  --       fish = { "fish" },
  --       -- sh = { "shellcheck" },
  --       -- Use the "*" filetype to run linters on all filetypes.
  --       -- ['*'] = { 'global linter' },
  --       -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
  --       -- ['_'] = { 'fallback linter' },
  --       -- ["*"] = { "typos" },
  --     },
  --   },
  -- },

  -- custom language formatter
  {
    "stevearc/conform.nvim",
    opts = {
      -- 在这里定义你的配置
      formatters_by_ft = {
        python = { "black" }, -- 为 Python 文件配置 black
        -- ... 其他文件类型
      },
    },
  },
}
