return {
  "folke/noice.nvim",
  opts = {
    routes = {
      {
        filter = {
          event = "msg_show",
          -- kind = { "shell_cmd", "shell_out", "shell_err" },
          kind = { "shell_out", "shell_err" },
        },
        view = "notify",
      },
    },
    commands = {
      last = {
        filter = {
          any = {
            { event = "noice" },
            { event = "msg_show", kind = { "shell_out", "shell_err" } },
          },
        },
      },
    },
  },
}
