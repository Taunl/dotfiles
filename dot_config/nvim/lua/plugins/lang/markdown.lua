return {
  {
    "iamcco/markdown-preview.nvim",
    -- 其他 cmd, build, keys 保持不变 ...

    -- 用 init 来设置全局变量，LazyVim 自带的 config 依然生效
    config = function()
      vim.cmd([[do FileType]])
      vim.g.mkdp_browser = "firefox"
      -- 定义 Vimscript 函数
      --     vim.cmd([[
      --   function OpenMarkdownPreview(url)
      --     call luaeval('vim.fn.jobstart({"google-chrome-stable", "--new-window", _A}, {detach=true})', a:url)
      --   endfunction
      -- ]])

      -- 设置函数名
      -- vim.g.mkdp_browserfunc = "OpenMarkdownPreview"
      -- vim.g.mkdp_auto_close = 0
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = true,
    -- dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the mini.nvim suite
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.icons" }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons

    -- 这个插件可以运行在任何有 markdown 缓冲区的地方，不只是标准的 markdown, 请按需添加
    ft = { "markdown" },
    --
    -- 接下来这两个是 type annotations，它告诉 lua language server ，我将使用一个 render-markdown的模块，那么 lsp 将会提供我
    -- 正确的自动补全和函数签名提示
    -- 第二行 @type 这行注释声明了变量 opts 的类型。它指出 opts 这个变量应该符合 render.md.UserConfig 这个类型结构。这样 lsp 给我的代码提示就非常精准了
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      completions = {
        blink = { enabled = true },
        lsp = { enabled = true },
      },
      code = {
        -- sign = true,
        width = "block",
        border = "thin",
        min_width = 80,
        left_pad = 1,
        right_pad = 1,
        position = "right",

        language_icon = true,
        language_name = true,
        highlight_inline = "RenderMarkdownCodeInfo",
      },
      heading = {
        -- sign = true,
        icons = {
          "󰼏  ", -- h1
          "󰎨  ", -- h2
          "󰼑  ", -- h3
          "󰎲  ", -- h4
          "󰼓  ", -- h5
          "󰎴  ", -- h6
        },
        border = true,
        left_pad = 1,
      },

      -- 用 snacks.image 代替
      latex = {
        enabled = true,
        render_modes = true,
        -- converter = { "latex2text", "utftex" },
        converter = { "utftex", "latex2text" },
        highlight = "RenderMarkdownMath",
        position = "center",

        top_pad = 0,
        bottom_pad = 0,
      },

      bullet = {
        left_pad = 1,
      },
    },
  },
}
