return {
  "saghen/blink.cmp",
  -- enabled = false,

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {

    keymap = {
      preset = "super-tab",
    },
    -- sources = {
    --
    --   -- default 改动无效，默认就是会加载这么多 provider，请在 providers 中去 enabled = false
    --   -- default = { "lsp", "snippets", "path", "buffer" }
    --
    --   -- https://cmp.saghen.dev/configuration/sources.html#provider-options
    --   providers = {
    --     -- score_offset -- 是分数，分高者先
    --     -- name -- 是在候选列表中显示的来原名
    --     lsp = { name = "[l]", enabled = true, min_keyword_length = 2, score_offset = 10 },
    --     path = { name = "[p]", score_offset = 0 },
    --     buffer = { name = "[b]", score_offset = -10 },
    --     snippets = { name = "[s]", score_offset = 10 },
    --   },
    -- },
    -- completion = {
    --   menu = {
    --     draw = {
    --       -- 关键：加入 source_name 列，才会渲染你定义的 name
    --       columns = {
    --         { "kind_icon", "label", gap = 1 },
    --         { "label_description", gap = 1 },
    --         { "source_name", gap = 1 }, -- 展示来源名称（LSP / Buffer / ...）
    --       },
    --     },
    --   },
    -- },
  },
}
