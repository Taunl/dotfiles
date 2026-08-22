-- 定义一个生成边框的辅助函数
local function make_box(args)
  -- args[1][1] 可以实时获取第一个输入节点（i(1)）中的第一行文本
  local user_text = args[1][1] or ""

  -- 计算文本长度（处理中文字符时建议使用 vim.fn.strdisplaywidth 确保准确的显示宽度）
  local len = vim.fn.strdisplaywidth(user_text)

  -- 根据文本长度生成对应长度的横线
  local top_bottom_line = "+" .. string.rep("-", len + 2) .. "+"
  return top_bottom_line
end

local function get_comment_string(args)
  local cs = vim.bo.commentstring
  return cs:sub(1, -3)
end

local function get_comment_prefix()
  local cs = vim.bo.commentstring
  -- 去掉注释体占位符 "%s"，并去除前后空格
  local prefix = cs:gsub("%%s", ""):gsub("%s+$", "")
  return prefix
end

local function fn(
  args, -- text from i(2) in this example i.e. { { "456" } }
  parent, -- parent snippet or parent node
  user_args -- user_args from opts.user_args
)
  return "[" .. args[1][1] .. user_args .. "]"
end

return {
  s("trig", {
    i(1),
    t("<-i(1) "),
    f(
      fn, -- callback (args, parent, user_args) -> string
      { 2 }, -- node indice(s) whose text is passed to fn, i.e. i(2)
      { user_args = { "user_args_value" } } -- opts
    ),
    t(" i(2)->"),
    i(2),
    t("<-i(2) i(0)->"),
    i(0),
  }),
  s(
    "cc",
    c(1, {
      t("Ugh boring, a text node"),
      i(nil, "At least I can edit something now..."),
      f(function(args)
        return "Still only counts as text!!"
      end, {}),
    })
  ),
  s(
    { trig = "([xyzabc])(%d)", regTrig = true, snippetType = "autosnippet" },
    f(function(args, snip)
      return snip.captures[1] .. "_" .. snip.captures[2]
    end, {})
  ),
  s("tt", {
    f(get_comment_string, {}, { key = "comment" }),
    -- i(1, get_comment_string()),
    t({
      "╭──────────────────────────────────────────────────────────╮",
      "",
    }),
    rep(k("comment")),

    f(function(args)
      return "│" .. string.rep(" ", (58 - #args[1][1]) / 2)
    end, { 1 }),
    i(1, "Text"),
    f(function(args)
      return { string.rep(" ", (58 - #args[1][1] + 1) / 2) .. "│", "" }
    end, { 1 }),
    rep(k("comment")),
    t({
      "╰──────────────────────────────────────────────────────────╯",
      "",
    }),
  }),

  s("box", {
    -- 顶部的边框，依赖 i(1) 的输入动态改变
    f(make_box, { 1 }),
    t({ "", "| " }),

    -- 中间的文本输入区
    i(1, "你的文本"),
    t(" |"),
    t({ "", "" }),

    -- 底部的边框，依赖 i(1) 的输入动态改变
    f(make_box, { 1 }),
  }),
}
