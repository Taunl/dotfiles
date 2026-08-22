return {
  {
    "chomosuke/typst-preview.nvim",
    opts = {
      dependencies_bin = {
        tinymist = "tinymist",
      },
      -- 用于定义浏览器打开方式
      open_cmd = "firefox %s -P typst-preview --class typst-preview",
    },
  },
}
