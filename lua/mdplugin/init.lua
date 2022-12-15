local M = {}
local config = '/home/sam/Documents/Code/mdplugin/config.yml'

M.readconfig = function()
	if not io.open(config,"rb") then print('no config') end
	local lines = {}
	for line in io.lines(config) do
		lines[#lines + 1] = line
	end
	print(vim.inspect(lines))
	return lines
end

return M
