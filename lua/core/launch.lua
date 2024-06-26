-- This is a way of better bootstraping plugins using Lazy.
-- https://github.com/LunarVim/Launch.nvim/blob/master/lua/user/launch.lua
LAZY_PLUGIN_SPEC = {}

function spec(item)
	table.insert(LAZY_PLUGIN_SPEC, { import = item })
end
