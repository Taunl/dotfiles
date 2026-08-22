return {
  "folke/snacks.nvim",
  ---@module "snacks"
  ---@type snacks.Config
  opts = {
    -- 这个image 可以加载neovim 中的图片与数学公式
    image = {
      doc = {},
      math = {
        enabled = false,
        latex = {
          font_size = "small",
        },
      },
    },
    terminal = {
      win = {
        position = "float",
        width = 0.7,
        height = 0.8,
        border = "rounded",
        keys = {
          -- 这里设定了 c-. 是隐藏 win
          hide_dot = { "<C-.>", "hide", desc = "Hide Terminal", mode = "t" },
        },
      },
    },
    explorer = {},
    picker = {
      sources = {
        -- 默认不显示隐藏文件
        -- 文件目录树
        explorer = {
          -- 默认不显示隐藏文件
          -- hidden = true,
        },
        -- 文件查找器
        files = {
          -- hidden = true,
        },
        -- grep 查找器
        grep = {
          -- hidden = true,
        },
      },
    },
  },
}
