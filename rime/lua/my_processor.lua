-- https://github.com/hchunhui/librime-lua/wiki/api
-- 脚本教程
--
local Shift_L = 0xFFE1
local Shift_R = 0xFFE2
local Escape = 0xFF1B

local shift_flag = 1

--[[
-- 0 : to system
-- 1 : stop to handle
-- 2 : to next processor
--]]

local function my_processor(key, env)
	local context = env.engine.context
	-- press esc
	if not key:release() and key.keycode == Escape then
		if not context:get_option("ascii_mode") then
			context:clear()
			context:set_option("ascii_mode", true)
		end
		return 0
	-- press M key
	elseif key:shift() and key.keycode ~= Shift_L and key.keycode ~= Shift_R then
		-- Can't switch ascii/chinese when shift flag equals zero which represents M key be activated
		shift_flag = 0
	-- release left shift
	elseif key:release() and key.keycode == Shift_L then
		if shift_flag == 0 then
			shift_flag = 1
		else
			if not context:get_option("ascii_mode") then
				env.engine:commit_text(context.input)
				context:clear()
				context:set_option("ascii_mode", true)
			end
		end

	-- release right shift
	elseif key:release() and key.keycode == Shift_R then
		if shift_flag == 0 then
			shift_flag = 1
		else
			if context:get_option("ascii_mode") then
				context:set_option("ascii_mode", false)
			end
		end
	end
	return 2
end

return my_processor
