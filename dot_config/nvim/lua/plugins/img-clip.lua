return {
  "HakonHarnes/img-clip.nvim",
  event = "VeryLazy",
  ft = { "tex", "markdown", "typst" },
  opts = {
    default = {
      dir_path = "/home/lunat/Documents/markdoc/MISC/zRepository/Attachments/",
    },
    -- add options here
    -- or leave it empty to use the default settings
  },
  keys = {
    -- suggested keymap
    { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
  },
}
