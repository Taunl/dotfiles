return {
  "L3MON4D3/LuaSnip",
  -- enabled = false,
  -- follow latest release.
  -- install jsregexp (optional!).

  opts = {
    -- 可以定义自动触发的片段
    enable_autosnippets = true,

    -- I 代表 insert mode，未加则为 normal mode
    update_events = { "TextChanged", "TextChangedI" },
  },

  config = function(_, opts)
    local ls = require("luasnip")

    require("luasnip.loaders.from_lua").lazy_load({ path = { vim.fn.stdpath("config") .. "/luasnippets" } })

    ls.setup(opts)

    -- 这段用于在回退 snippet 时恢复到原状，这会将所有输出拆成最小原子的重做单元
    -- 在官方文档上 vim.o.ul 在每次赋值时都会切断 undo block, 即便赋自己的相同值
    -- local auto_expand = ls.expand_auto
    -- ls.expand_auto = function(...)
    --   vim.o.undolevels = vim.o.undolevels
    --   auto_expand(...)
    -- end

    -- 定义命令
    vim.api.nvim_create_user_command("LuaSnipEdit", function()
      require("luasnip.loaders").edit_snippet_files()
    end, { force = true })
    vim.api.nvim_create_user_command("LuaSnipReload", function()
      require("luasnip.loaders.from_lua").lazy_load({ path = { vim.fn.stdpath("config") .. "/luasnippets" } })
    end, { force = true })

    -- 定义快捷键

    -- vim.keymap.set({ "i" }, "<Tab>", function()
    --   ls.expand()
    -- end, { silent = true })
    -- vim.keymap.set({ "i", "s" }, "<C-L>", function()
    --   ls.jump(1)
    -- end, { silent = true })
    -- vim.keymap.set({ "i", "s" }, "<C-J>", function()
    --   ls.jump(-1)
    -- end, { silent = true })
    --
    vim.keymap.set({ "i", "s" }, "<C-P>", function()
      if ls.choice_active() then
        ls.change_choice(-1)
      end
    end, { silent = true })

    vim.keymap.set({ "i", "s" }, "<C-N>", function()
      if ls.choice_active() then
        ls.change_choice(1)
      end
    end, { silent = true })

    vim.keymap.set({ "i", "s" }, "<C-U>", function()
      if ls.choice_active() then
        require("luasnip.extras.select_choice")()
      end
    end, { noremap = true, desc = "luasnip select choice" })
  end,
}
