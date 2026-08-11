--- 过滤器：四码才出现词组
local function my_filter(input, env)
  local context = env.engine.context
  local input_length = #context.input
  for cand in input:iter() do
    if input_length < 4 then
      if (utf8.len(cand.text) == 1) then
        yield(cand)
      end 
    else 
      yield(cand)
    end
  end
end

return my_filter
